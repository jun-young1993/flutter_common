import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClient {
  static DioClient? _instance;
  late final Dio _dio;
  final String? debugBaseUrl;
  final String? baseUrl;
  final bool? useLogInterceptor;
  final bool? xIncludeUserGroupAdmin;
  final SharedPreferences _sharedPreferences;
  final AppKeys appKey;

  factory DioClient({
    String? debugBaseUrl,
    String? baseUrl,
    bool? useLogInterceptor,
    bool? xIncludeUserGroupAdmin,
    required SharedPreferences sharedPreferences,
    required AppKeys appKey,
  }) {
    _instance = DioClient._internal(
      debugBaseUrl: debugBaseUrl,
      baseUrl: baseUrl,
      useLogInterceptor: useLogInterceptor,
      xIncludeUserGroupAdmin: xIncludeUserGroupAdmin,
      sharedPreferences: sharedPreferences,
      appKey: appKey,
    );
    return _instance!;
  }

  DioClient._internal({
    this.debugBaseUrl,
    this.baseUrl,
    this.useLogInterceptor,
    this.xIncludeUserGroupAdmin,
    required SharedPreferences sharedPreferences,
    required AppKeys appKey,
  })  : _sharedPreferences = sharedPreferences,
        appKey = appKey {
    _dio = Dio(
      BaseOptions(
        baseUrl: _getBaseUrl(),
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'X-Include-User-Group-Admin': xIncludeUserGroupAdmin ?? false,
          'X-App-Key': JunyConstants.getAppKeyStringOrThrow(appKey),
        },
      ),
    );

    // Authorization 헤더 인터셉터 추가
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // 사용자 ID가 있으면 Authorization 헤더 추가
        final userId = await _getCurrentUserId();

        debugPrint('🔥 [USER ID] $userId');
        if (userId != null) {
          options.headers['Authorization'] = 'Bearer user:$userId';
        }
        handler.next(options);
      },
    ));

    if (kDebugMode && useLogInterceptor == true) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
  }

  String _getBaseUrl() {
    if (kDebugMode) {
      if (debugBaseUrl != null) {
        return debugBaseUrl!;
      }
      return 'http://127.0.0.1:3000';
    }
    if (baseUrl == null) {
      throw Exception('baseUrl is not set');
    }
    return baseUrl!;
  }

  Future<String?> _getCurrentUserId() async {
    // 모든 앱 키에 대해 사용자 ID를 찾아봅니다

    try {
      final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
      final userIdKey = '$appKeyString-user-id';
      final userId = _sharedPreferences.getString(userIdKey);
      if (userId != null) {
        return userId;
      }
    } catch (e) {
      // 해당 앱 키가 설정되지 않은 경우 무시
    }

    return null;
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.patch(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException error) {
    debugPrint('🔥 [ERROR] $error');
    debugPrint('🔥 [ERROR Stack Trace] ${StackTrace.current}');
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const AppException.timeout();
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response);
      case DioExceptionType.cancel:
        return const AppException.cancelled();
      default:
        return AppException.network(error.message ?? '알 수 없는 네트워크 오류가 발생했습니다.');
    }
  }

  AppException _handleBadResponse(Response? response) {
    switch (response?.statusCode) {
      case 400:
        return AppException.badRequest(
          response?.data?['message'].toString() ?? '잘못된 요청입니다.',
        );
      case 401:
        return const AppException.unauthorized();
      case 403:
        return const AppException.forbidden();
      case 404:
        return const AppException.notFound();
      case 413:
        return AppException.badRequest(
          response?.data?['message']?.toString() ?? 
          '파일 크기가 너무 큽니다. 최대 업로드 크기를 확인해주세요.',
        );
      case 500:
      case 501:
      case 503:
        return AppException.server(
          response?.data?['message'].toString() ?? '서버 오류가 발생했습니다.',
        );
      default:
        return AppException.unknown(
          response?.data?['message'].toString() ?? '알 수 없는 오류가 발생했습니다.',
        );
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal(debugBaseUrl: null);
  late final Dio _dio;
  final String? debugBaseUrl;
  factory DioClient({String? debugBaseUrl}) {
    return _instance;
  }

  DioClient._internal({this.debugBaseUrl}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _getBaseUrl(),
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
  }

  String _getBaseUrl() {
    if (debugBaseUrl != null) {
      return debugBaseUrl!;
    }
    if (kDebugMode) {
      // return 'https://juny.digital';

      return 'http://127.0.0.1:3000';
    }
    // TODO: 실제 운영 서버 URL로 변경
    return JunyConstants.apiBaseUrl;
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

  Exception _handleError(DioException error) {
    print('🔥 [ERROR] ${error}');
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

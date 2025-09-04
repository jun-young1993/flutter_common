import 'package:flutter_common/flutter_common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  // 타임아웃
  const factory AppException.timeout([String? message]) = _Timeout;

  // 네트워크 예외
  const factory AppException.network([String? message]) = _Network;

  // 잘못된 요청
  const factory AppException.unknown([String? message]) = _Unknown;
  const factory AppException.badRequest([String? message]) = _BadRequest;
  const factory AppException.unauthorized([String? message]) = _Unauthorized;
  const factory AppException.forbidden([String? message]) = _Forbidden;
  const factory AppException.notFound([String? message]) = _NotFound;
  const factory AppException.server([String? message]) = _Server;
  const factory AppException.cancelled([String? message]) = _Cancelled;

  // MCP API 키 찾을 수 없음
  const factory AppException.notFoundMcpApiKey([String? message]) =
      _NotFoundMcpApiKey;
}

extension AppExceptionMessage on AppException {
  String get message => when(
        unknown: (message) => message ?? Tr.api.unknown.tr(),
        timeout: (message) => message ?? Tr.api.requestTimeout.tr(),
        network: (message) => message ?? Tr.api.network.tr(),
        badRequest: (message) => message ?? Tr.api.badRequest.tr(),
        unauthorized: (message) => message ?? Tr.api.unauthorized.tr(),
        forbidden: (message) => message ?? Tr.api.forbidden.tr(),
        notFound: (message) => message ?? Tr.api.notFound.tr(),
        server: (message) => message ?? Tr.api.server.tr(),
        cancelled: (message) => message ?? Tr.api.cancelled.tr(),
        notFoundMcpApiKey: (message) =>
            message ?? Tr.api.notFoundMcpApiKey.tr(),
      );
}

import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user/user_storage_limit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_storage_limit_state.freezed.dart';

@freezed
class UserStorageLimitState with _$UserStorageLimitState {
  const factory UserStorageLimitState({
    @Default(false) bool s3IsLoading,
    @Default(null) AppException? s3Error,
    @Default(null) UserStorageLimit? s3,
    @Default(false) bool groupAdminDefaultStorageLimitIsLoading,
    @Default(null) AppException? groupAdminDefaultStorageLimitError,
    @Default(null) UserStorageLimit? groupAdminDefaultStorageLimit,
  }) = _UserStorageLimitState;

  const UserStorageLimitState._();

  factory UserStorageLimitState.initialize() => const UserStorageLimitState();
}

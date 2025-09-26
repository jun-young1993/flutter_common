import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_storage_limit_event.freezed.dart';

@freezed
class UserStorageLimitEvent with _$UserStorageLimitEvent {
  const factory UserStorageLimitEvent.s3Initialize() = _S3Initialize;
  const factory UserStorageLimitEvent.s3ClearError() = _S3ClearError;
}

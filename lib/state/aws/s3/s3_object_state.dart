import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_state.freezed.dart';

@freezed
class S3ObjectState with _$S3ObjectState {
  const factory S3ObjectState({
    @Default(false) bool isLoading,
    @Default(false) bool isUploading,
    @Default(null) AppException? error,
    @Default([]) List<S3Object> s3Objects,
    @Default(null) S3Object? s3Object,
    @Default(0) int allCount,
    @Default(false) bool isAllCountLoading,
  }) = _S3ObjectState;

  factory S3ObjectState.initialize() => const S3ObjectState();

  const S3ObjectState._();
}

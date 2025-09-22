import 'dart:io';

import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_event.freezed.dart';

@freezed
class S3ObjectEvent with _$S3ObjectEvent {
  const factory S3ObjectEvent.initialize() = _Initialize;
  const factory S3ObjectEvent.getS3Objects(User user, int skip, int take) =
      _GetS3Objects;
  const factory S3ObjectEvent.clearError() = _ClearError;
  const factory S3ObjectEvent.uploadFile(File file, User user) = _UploadFile;
  const factory S3ObjectEvent.findOneOrFail(String id) = _FindOneOrFail;
  const factory S3ObjectEvent.count() = _Count;
}

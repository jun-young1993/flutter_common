import 'dart:io';

import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:flutter_common/models/aws/s3/s3_object_like.dart';
import 'package:flutter_common/models/aws/s3/s3_object_reply.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_event.freezed.dart';

@freezed
class S3ObjectEvent with _$S3ObjectEvent {
  const factory S3ObjectEvent.initialize() = _Initialize;
  const factory S3ObjectEvent.getS3Objects(int skip, int take) = _GetS3Objects;
  const factory S3ObjectEvent.clearError() = _ClearError;
  const factory S3ObjectEvent.uploadFile(File file, User user) = _UploadFile;
  const factory S3ObjectEvent.uploadFiles(List<File> files, User user) =
      _UploadFiles;
  const factory S3ObjectEvent.deleteFile(S3Object s3Object, User user) =
      _DeleteFile;
  const factory S3ObjectEvent.findOneOrFail(String id, User user) =
      _FindOneOrFail;
  const factory S3ObjectEvent.count() = _Count;
  const factory S3ObjectEvent.checkObjectsExistenceByMonth(
      String year, String month) = _CheckObjectsExistenceByMonth;
  const factory S3ObjectEvent.getObjectsByDate(
          String year, String month, String day, int? skip, int? take) =
      _GetObjectsByDate;
  const factory S3ObjectEvent.likeS3Object(S3Object s3Object, User user) =
      _LikeS3Object;
  const factory S3ObjectEvent.removeLikeS3Object(
      S3ObjectLike s3ObjectLike, User user) = _RemoveLikeS3Object;
  const factory S3ObjectEvent.replyS3Object(
      S3Object s3Object, User user, String content) = _ReplyS3Object;
  const factory S3ObjectEvent.removeReplyS3Object(
      S3ObjectReply s3ObjectReply, User user) = _RemoveReplyS3Object;
  const factory S3ObjectEvent.reportS3Object(
      S3Object s3Object, ReportReason type, String? content) = _ReportS3Object;

  const factory S3ObjectEvent.reportS3ObjectReply(
          S3ObjectReply s3ObjectReply, ReportReason type, String? content) =
      _ReportS3ObjectReply;
  const factory S3ObjectEvent.getS3ObjectSurround(S3Object s3Object) =
      _GetS3ObjectSurround;
}

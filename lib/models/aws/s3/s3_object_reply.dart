import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_reply.freezed.dart';
part 's3_object_reply.g.dart';

@freezed
class S3ObjectReply with _$S3ObjectReply {
  const factory S3ObjectReply({
    required String id,
    required String userId,
    required String s3ObjectId,
    required String content,
    required DateTime createdAt,
  }) = _S3ObjectReply;

  const S3ObjectReply._();
  factory S3ObjectReply.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectReplyFromJson(json);
}

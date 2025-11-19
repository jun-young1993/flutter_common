import 'package:flutter/material.dart';
import 'package:flutter_common/models/aws/s3/s3_object_base.dart';
import 'package:flutter_common/models/aws/s3/s3_object_like.dart';
import 'package:flutter_common/models/aws/s3/s3_object_metadata.dart';
import 'package:flutter_common/models/aws/s3/s3_object_reply.dart';
import 'package:flutter_common/models/aws/s3/s3_object_tag.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object.freezed.dart';
part 's3_object.g.dart';

/// S3 객체 정보를 담는 클래스
/// thumbnail은 S3ObjectBase를 사용하여 재귀적 참조 방지
/// S3ObjectCommonMixin을 통해 공통 getter 로직 공유
@freezed
class S3Object with _$S3Object, S3ObjectCommonMixin {
  const factory S3Object({
    required String id,
    @Default(null) String? key,
    @Default(null) String? url,
    @Default(null) String? originalName,
    @Default(null) int? size,
    @Default(null) String? mimetype,
    @Default(false) bool active,
    @Default(null) DateTime? createdAt,
    @Default(null) String? userId,
    @Default(null) User? user,
    @Default(null) S3ObjectBase? thumbnail,
    @Default([]) List<S3ObjectTag>? tags,
    @Default([]) List<S3ObjectLike>? likes,
    @Default([]) List<S3ObjectReply>? replies,
    @Default(null) S3ObjectMetadata? metadata,
    @Default(false) bool isHidden,
    @Default(null) String? fileType,
    @Default(false) bool isImage,
    @Default(false) bool isVideo,
    @Default(false) bool isAudio,
    @Default(false) bool isDocument,
    @Default(false) bool isArchive,
    @Default(false) bool isThumbnail,
    @Default(false) bool hasThumbnail,
    @Default(null) String? thumbnailUrl,
  }) = _S3Object;

  const S3Object._();

  factory S3Object.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectFromJson(json);

  List<IconData?> get emotionIcons {
    return tags
            ?.where((tag) => tag.isEmotion)
            .map((tag) => tag.icon)
            .toList() ??
        [];
  }

  List<S3ObjectTag?> get emotions {
    return tags?.where((tag) => tag.isEmotion).map((tag) => tag).toList() ?? [];
  }
}

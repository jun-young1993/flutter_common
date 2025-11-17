// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$S3ObjectImpl _$$S3ObjectImplFromJson(Map<String, dynamic> json) =>
    _$S3ObjectImpl(
      id: json['id'] as String,
      key: json['key'] as String? ?? null,
      url: json['url'] as String? ?? null,
      originalName: json['originalName'] as String? ?? null,
      size: (json['size'] as num?)?.toInt() ?? null,
      mimetype: json['mimetype'] as String? ?? null,
      active: json['active'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String? ?? null,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] == null
          ? null
          : S3ObjectBase.fromJson(json['thumbnail'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => S3ObjectTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      likes: (json['likes'] as List<dynamic>?)
              ?.map((e) => S3ObjectLike.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => S3ObjectReply.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fileType: json['fileType'] as String? ?? null,
      isImage: json['isImage'] as bool? ?? false,
      isVideo: json['isVideo'] as bool? ?? false,
      isAudio: json['isAudio'] as bool? ?? false,
      isDocument: json['isDocument'] as bool? ?? false,
      isArchive: json['isArchive'] as bool? ?? false,
      isThumbnail: json['isThumbnail'] as bool? ?? false,
      hasThumbnail: json['hasThumbnail'] as bool? ?? false,
      thumbnailUrl: json['thumbnailUrl'] as String? ?? null,
    );

Map<String, dynamic> _$$S3ObjectImplToJson(_$S3ObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'url': instance.url,
      'originalName': instance.originalName,
      'size': instance.size,
      'mimetype': instance.mimetype,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'userId': instance.userId,
      'user': instance.user,
      'thumbnail': instance.thumbnail,
      'tags': instance.tags,
      'likes': instance.likes,
      'replies': instance.replies,
      'fileType': instance.fileType,
      'isImage': instance.isImage,
      'isVideo': instance.isVideo,
      'isAudio': instance.isAudio,
      'isDocument': instance.isDocument,
      'isArchive': instance.isArchive,
      'isThumbnail': instance.isThumbnail,
      'hasThumbnail': instance.hasThumbnail,
      'thumbnailUrl': instance.thumbnailUrl,
    };

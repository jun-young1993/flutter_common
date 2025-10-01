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
      'tags': instance.tags,
      'likes': instance.likes,
      'replies': instance.replies,
    };

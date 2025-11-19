// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$S3ObjectBaseImpl _$$S3ObjectBaseImplFromJson(Map<String, dynamic> json) =>
    _$S3ObjectBaseImpl(
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
      isHidden: json['isHidden'] as bool? ?? false,
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

Map<String, dynamic> _$$S3ObjectBaseImplToJson(_$S3ObjectBaseImpl instance) =>
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
      'isHidden': instance.isHidden,
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

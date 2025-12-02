// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object_share.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$S3ObjectShareImpl _$$S3ObjectShareImplFromJson(Map<String, dynamic> json) =>
    _$S3ObjectShareImpl(
      id: json['id'] as String,
      originalName: json['originalName'] as String? ?? null,
      expiredAt: json['expiredAt'] == null
          ? null
          : DateTime.parse(json['expiredAt'] as String),
      shareCode: json['shareCode'] as String? ?? null,
      title: json['title'] as String? ?? null,
      description: json['description'] as String? ?? null,
      getShareUrl: json['getShareUrl'] as String,
    );

Map<String, dynamic> _$$S3ObjectShareImplToJson(_$S3ObjectShareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalName': instance.originalName,
      'expiredAt': instance.expiredAt?.toIso8601String(),
      'shareCode': instance.shareCode,
      'title': instance.title,
      'description': instance.description,
      'getShareUrl': instance.getShareUrl,
    };

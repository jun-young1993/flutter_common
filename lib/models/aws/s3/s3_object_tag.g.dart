// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$S3ObjectTagImpl _$$S3ObjectTagImplFromJson(Map<String, dynamic> json) =>
    _$S3ObjectTagImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String? ?? '#000000',
      type: json['type'] as String,
    );

Map<String, dynamic> _$$S3ObjectTagImplToJson(_$S3ObjectTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'type': instance.type,
    };

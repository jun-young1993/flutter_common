// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object_surround.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$S3ObjectSurroundImpl _$$S3ObjectSurroundImplFromJson(
        Map<String, dynamic> json) =>
    _$S3ObjectSurroundImpl(
      previous: (json['previous'] as List<dynamic>?)
              ?.map((e) => S3Object.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      current: S3Object.fromJson(json['current'] as Map<String, dynamic>),
      next: (json['next'] as List<dynamic>?)
              ?.map((e) => S3Object.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$S3ObjectSurroundImplToJson(
        _$S3ObjectSurroundImpl instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
    };

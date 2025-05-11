// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeGroupImpl _$$NoticeGroupImplFromJson(Map<String, dynamic> json) =>
    _$NoticeGroupImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      notices: (json['notices'] as List<dynamic>?)
              ?.map((e) => Notice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NoticeGroupImplToJson(_$NoticeGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'notices': instance.notices,
    };

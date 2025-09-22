// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGroupImpl _$$UserGroupImplFromJson(Map<String, dynamic> json) =>
    _$UserGroupImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? null,
      description: json['description'] as String? ?? null,
      isActive: json['isActive'] as bool,
      isSystem: json['isSystem'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      number: json['number'] as String? ?? null,
      isJoinable: json['isJoinable'] as bool,
    );

Map<String, dynamic> _$$UserGroupImplToJson(_$UserGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'isSystem': instance.isSystem,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'users': instance.users,
      'number': instance.number,
      'isJoinable': instance.isJoinable,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      username: json['username'] as String?,
      email: json['email'] as String?,
      type: json['type'] as String,
      isActive: json['isActive'] as bool,
      isAdmin: json['isAdmin'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      userGroups: (json['userGroups'] as List<dynamic>?)
              ?.map((e) => UserGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fcmToken: json['fcmToken'] as String?,
      storageLimits: (json['storageLimits'] as List<dynamic>?)
              ?.map((e) => UserStorageLimit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'type': instance.type,
      'isActive': instance.isActive,
      'isAdmin': instance.isAdmin,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userGroups': instance.userGroups,
      'fcmToken': instance.fcmToken,
      'storageLimits': instance.storageLimits,
    };

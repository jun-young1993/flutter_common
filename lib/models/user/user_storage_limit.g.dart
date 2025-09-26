// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_storage_limit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStorageLimitImpl _$$UserStorageLimitImplFromJson(
        Map<String, dynamic> json) =>
    _$UserStorageLimitImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      limitType: $enumDecode(_$StorageLimitTypeEnumMap, json['limitType']),
      limitValue: (json['limitValue'] as num).toInt(),
      currentUsage: (json['currentUsage'] as num?)?.toInt() ?? 0,
      isActive: json['isActive'] as bool? ?? true,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      description: json['description'] as String? ?? null,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserStorageLimitImplToJson(
        _$UserStorageLimitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'limitType': _$StorageLimitTypeEnumMap[instance.limitType]!,
      'limitValue': instance.limitValue,
      'currentUsage': instance.currentUsage,
      'isActive': instance.isActive,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$StorageLimitTypeEnumMap = {
  StorageLimitType.s3Storage: 'S3_STORAGE',
  StorageLimitType.fileUpload: 'FILE_UPLOAD',
  StorageLimitType.dailyUpload: 'DAILY_UPLOAD',
  StorageLimitType.monthlyUpload: 'MONTHLY_UPLOAD',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationImpl _$$VerificationImplFromJson(Map<String, dynamic> json) =>
    _$VerificationImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      code: json['code'] as String,
      isVerified: json['isVerified'] as bool,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$VerificationImplToJson(_$VerificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'code': instance.code,
      'isVerified': instance.isVerified,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

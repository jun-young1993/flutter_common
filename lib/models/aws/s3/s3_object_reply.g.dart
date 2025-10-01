// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_object_reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$S3ObjectReplyImpl _$$S3ObjectReplyImplFromJson(Map<String, dynamic> json) =>
    _$S3ObjectReplyImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      s3ObjectId: json['s3ObjectId'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$S3ObjectReplyImplToJson(_$S3ObjectReplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      's3ObjectId': instance.s3ObjectId,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
    };

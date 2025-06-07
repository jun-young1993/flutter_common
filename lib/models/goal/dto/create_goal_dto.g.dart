// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_goal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGoalDtoImpl _$$CreateGoalDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreateGoalDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      userId: json['userId'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$CreateGoalDtoImplToJson(_$CreateGoalDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'userId': instance.userId,
      'isCompleted': instance.isCompleted,
    };

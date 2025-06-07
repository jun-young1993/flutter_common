// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_goal_progress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGoalProgressDtoImpl _$$CreateGoalProgressDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateGoalProgressDtoImpl(
      date: DateTime.parse(json['date'] as String),
      goalUserId: json['goalUserId'] as String,
      goalId: json['goalId'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$CreateGoalProgressDtoImplToJson(
        _$CreateGoalProgressDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'goalUserId': instance.goalUserId,
      'goalId': instance.goalId,
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
    };

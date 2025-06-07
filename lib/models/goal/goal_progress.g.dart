// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalProgressImpl _$$GoalProgressImplFromJson(Map<String, dynamic> json) =>
    _$GoalProgressImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      goalUserId: json['goalUserId'] as String,
      goalId: json['goalId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$GoalProgressImplToJson(_$GoalProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'goalUserId': instance.goalUserId,
      'goalId': instance.goalId,
      'createdAt': instance.createdAt.toIso8601String(),
    };

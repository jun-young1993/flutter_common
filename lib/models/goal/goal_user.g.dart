// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalUserImpl _$$GoalUserImplFromJson(Map<String, dynamic> json) =>
    _$GoalUserImpl(
      id: json['id'] as String,
      goalId: json['goalId'] as String,
      userId: json['userId'] as String,
      isAdmin: json['isAdmin'] as bool,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GoalUserImplToJson(_$GoalUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goalId': instance.goalId,
      'userId': instance.userId,
      'isAdmin': instance.isAdmin,
      'user': instance.user,
    };

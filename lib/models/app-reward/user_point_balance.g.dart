// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_point_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPointBalanceImpl _$$UserPointBalanceImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPointBalanceImpl(
      id: json['id'] as String,
      currentPoints: (json['currentPoints'] as num).toInt(),
      totalEarnedPoints: (json['totalEarnedPoints'] as num).toInt(),
      totalSpentPoints: (json['totalSpentPoints'] as num).toInt(),
      totalWithdrawnPoints: (json['totalWithdrawnPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$UserPointBalanceImplToJson(
        _$UserPointBalanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentPoints': instance.currentPoints,
      'totalEarnedPoints': instance.totalEarnedPoints,
      'totalSpentPoints': instance.totalSpentPoints,
      'totalWithdrawnPoints': instance.totalWithdrawnPoints,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointTransactionImpl _$$PointTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$PointTransactionImpl(
      id: json['id'] as String,
      transactionType:
          $enumDecode(_$PointTransactionTypeEnumMap, json['transactionType']),
      source: $enumDecode(_$PointTransactionSourceEnumMap, json['source']),
      amount: (json['amount'] as num).toInt(),
      balanceBefore: (json['balanceBefore'] as num).toInt(),
      balanceAfter: (json['balanceAfter'] as num).toInt(),
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PointTransactionImplToJson(
        _$PointTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionType':
          _$PointTransactionTypeEnumMap[instance.transactionType]!,
      'source': _$PointTransactionSourceEnumMap[instance.source]!,
      'amount': instance.amount,
      'balanceBefore': instance.balanceBefore,
      'balanceAfter': instance.balanceAfter,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$PointTransactionTypeEnumMap = {
  PointTransactionType.earn: 'earn',
  PointTransactionType.spend: 'spend',
  PointTransactionType.withdraw: 'withdraw',
  PointTransactionType.refund: 'refund',
  PointTransactionType.bonus: 'bonus',
};

const _$PointTransactionSourceEnumMap = {
  PointTransactionSource.admob_reward: 'admob_reward',
  PointTransactionSource.offerwall: 'offerwall',
  PointTransactionSource.daily_bonus: 'daily_bonus',
  PointTransactionSource.referral: 'referral',
  PointTransactionSource.purchase: 'purchase',
  PointTransactionSource.withdrawal: 'withdrawal',
  PointTransactionSource.refund: 'refund',
};

_$UserRewardImpl _$$UserRewardImplFromJson(Map<String, dynamic> json) =>
    _$UserRewardImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      rewardType:
          $enumDecode(_$PointTransactionSourceEnumMap, json['rewardType']),
      date: DateTime.parse(json['date'] as String),
      usageCount: (json['usageCount'] as num).toInt(),
      totalPointsEarned: (json['totalPointsEarned'] as num).toInt(),
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserRewardImplToJson(_$UserRewardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'rewardType': _$PointTransactionSourceEnumMap[instance.rewardType]!,
      'date': instance.date.toIso8601String(),
      'usageCount': instance.usageCount,
      'totalPointsEarned': instance.totalPointsEarned,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

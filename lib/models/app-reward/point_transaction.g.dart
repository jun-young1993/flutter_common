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

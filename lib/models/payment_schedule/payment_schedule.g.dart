// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentScheduleImpl _$$PaymentScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentScheduleImpl(
      id: json['id'] as String,
      paymentNumber: (json['paymentNumber'] as num).toInt(),
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      principalAmount: _parseDouble(json['principalAmount']),
      interestAmount: _parseDouble(json['interestAmount']),
      totalAmount: _parseDouble(json['totalAmount']),
      remainingBalance: _parseDouble(json['remainingBalance']),
      status: json['status'] as String,
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      actualPaidAmount: _parseDouble(json['actualPaidAmount']),
      lateFee: _parseDouble(json['lateFee']),
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      loanId: json['loanId'] as String,
    );

Map<String, dynamic> _$$PaymentScheduleImplToJson(
        _$PaymentScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentNumber': instance.paymentNumber,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'principalAmount': instance.principalAmount,
      'interestAmount': instance.interestAmount,
      'totalAmount': instance.totalAmount,
      'remainingBalance': instance.remainingBalance,
      'status': instance.status,
      'paidAt': instance.paidAt?.toIso8601String(),
      'actualPaidAmount': instance.actualPaidAmount,
      'lateFee': instance.lateFee,
      'notes': instance.notes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'loanId': instance.loanId,
    };

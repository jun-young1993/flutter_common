// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_repayment_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanRepaymentSummaryImpl _$$LoanRepaymentSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanRepaymentSummaryImpl(
      totalRepaymentAmount: _parseDouble(json['totalRepaymentAmount']),
      totalInterestAmount: _parseDouble(json['totalInterestAmount']),
      averageMonthlyPayment: _parseDouble(json['averageMonthlyPayment']),
      remainingPrincipal: _parseDouble(json['remainingPrincipal']),
      remainingInterest: _parseDouble(json['remainingInterest']),
      nextPaymentDate: DateTime.parse(json['nextPaymentDate'] as String),
      repaymentProgress: _parseDouble(json['repaymentProgress']),
      interestRatio: _parseDouble(json['interestRatio']),
      principalRatio: _parseDouble(json['principalRatio']),
      completedPayments: _parseInt(json['completedPayments']),
      totalPayments: _parseInt(json['totalPayments']),
      overduePayments: _parseInt(json['overduePayments']),
      totalPrepaymentAmount: _parseDouble(json['totalPrepaymentAmount']),
      prepaymentInterestSavings:
          _parseDouble(json['prepaymentInterestSavings']),
    );

Map<String, dynamic> _$$LoanRepaymentSummaryImplToJson(
        _$LoanRepaymentSummaryImpl instance) =>
    <String, dynamic>{
      'totalRepaymentAmount': instance.totalRepaymentAmount,
      'totalInterestAmount': instance.totalInterestAmount,
      'averageMonthlyPayment': instance.averageMonthlyPayment,
      'remainingPrincipal': instance.remainingPrincipal,
      'remainingInterest': instance.remainingInterest,
      'nextPaymentDate': instance.nextPaymentDate.toIso8601String(),
      'repaymentProgress': instance.repaymentProgress,
      'interestRatio': instance.interestRatio,
      'principalRatio': instance.principalRatio,
      'completedPayments': instance.completedPayments,
      'totalPayments': instance.totalPayments,
      'overduePayments': instance.overduePayments,
      'totalPrepaymentAmount': instance.totalPrepaymentAmount,
      'prepaymentInterestSavings': instance.prepaymentInterestSavings,
    };

import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/loan_repayment_summary/loan_repayment_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_summery_state.freezed.dart';

@freezed
class LoanSummeryState with _$LoanSummeryState {
  const factory LoanSummeryState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) LoanRepaymentSummary? loanRepaymentSummary,
  }) = _LoanSummeryState;
}

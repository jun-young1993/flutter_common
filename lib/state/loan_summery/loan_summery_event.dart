import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_summery_event.freezed.dart';

@freezed
class LoanSummeryEvent with _$LoanSummeryEvent {
  const factory LoanSummeryEvent.getLoanSummery(String loanId) = GetLoanSummery;
}

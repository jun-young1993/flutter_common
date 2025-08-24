import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_repayment_summary.freezed.dart';
part 'loan_repayment_summary.g.dart';

/// 대출 상환 요약 정보 모델
@freezed
class LoanRepaymentSummary with _$LoanRepaymentSummary {
  const factory LoanRepaymentSummary({
    /// 총 상환금
    @JsonKey(fromJson: _parseDouble) required double totalRepaymentAmount,

    /// 총 이자
    @JsonKey(fromJson: _parseDouble) required double totalInterestAmount,

    /// 월 평균 상환금
    @JsonKey(fromJson: _parseDouble) required double averageMonthlyPayment,

    /// 남은 원금
    @JsonKey(fromJson: _parseDouble) required double remainingPrincipal,

    /// 남은 이자
    @JsonKey(fromJson: _parseDouble) required double remainingInterest,

    /// 다음 상환일
    required DateTime nextPaymentDate,

    /// 상환 진행률 (%)
    @JsonKey(fromJson: _parseDouble) required double repaymentProgress,

    /// 이자 비율 (%)
    @JsonKey(fromJson: _parseDouble) required double interestRatio,

    /// 원금 비율 (%)
    @JsonKey(fromJson: _parseDouble) required double principalRatio,

    /// 완료된 상환 건수
    @JsonKey(fromJson: _parseInt) required int completedPayments,

    /// 전체 상환 건수
    @JsonKey(fromJson: _parseInt) required int totalPayments,

    /// 연체 건수
    @JsonKey(fromJson: _parseInt) required int overduePayments,

    /// 중도상환 총액
    @JsonKey(fromJson: _parseDouble) required double totalPrepaymentAmount,

    /// 중도상환 시 절약되는 이자
    @JsonKey(fromJson: _parseDouble) required double prepaymentInterestSavings,
  }) = _LoanRepaymentSummary;

  factory LoanRepaymentSummary.fromJson(Map<String, dynamic> json) =>
      _$LoanRepaymentSummaryFromJson(json);
}

/// 문자열이나 숫자를 double로 안전하게 변환
double _parseDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  if (value is String) {
    final parsed = double.tryParse(value);
    return parsed ?? 0.0;
  }
  return 0.0;
}

/// 문자열이나 숫자를 int로 안전하게 변환
int _parseInt(dynamic value) {
  if (value == null) return 0;
  if (value is num) return value.toInt();
  if (value is String) {
    final parsed = int.tryParse(value);
    return parsed ?? 0;
  }
  return 0;
}

/*
// 사용 예시:
// 
// 1. 숫자로 된 JSON
// {
//   "totalRepaymentAmount": 1000000,
//   "totalInterestAmount": 150000,
//   "averageMonthlyPayment": 50000,
//   "remainingPrincipal": 800000,
//   "remainingInterest": 50000,
//   "nextPaymentDate": "2024-12-01T00:00:00.000Z",
//   "repaymentProgress": 20.5,
//   "interestRatio": 15.0,
//   "principalRatio": 85.0,
//   "completedPayments": 5,
//   "totalPayments": 24,
//   "overduePayments": 0,
//   "totalPrepaymentAmount": 0,
//   "prepaymentInterestSavings": 0
// }
//
// 2. 문자열로 된 JSON (API에서 문자열로 오는 경우)
// {
//   "totalRepaymentAmount": "1000000",
//   "totalInterestAmount": "150000",
//   "averageMonthlyPayment": "50000",
//   "remainingPrincipal": "800000",
//   "remainingInterest": "50000",
//   "nextPaymentDate": "2024-12-01T00:00:00.000Z",
//   "repaymentProgress": "20.5",
//   "interestRatio": "15.0",
//   "principalRatio": "85.0",
//   "completedPayments": "5",
//   "totalPayments": "24",
//   "overduePayments": "0",
//   "totalPrepaymentAmount": "0",
//   "prepaymentInterestSavings": "0"
// }
//
// 두 경우 모두 안전하게 처리됩니다!
*/

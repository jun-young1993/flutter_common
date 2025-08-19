import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_schedule.freezed.dart';
part 'payment_schedule.g.dart';

@freezed
class PaymentSchedule with _$PaymentSchedule {
  const factory PaymentSchedule({
    required String id,
    required int paymentNumber,
    required DateTime paymentDate,
    @JsonKey(fromJson: _parseDouble) required double principalAmount,
    @JsonKey(fromJson: _parseDouble) required double interestAmount,
    @JsonKey(fromJson: _parseDouble) required double totalAmount,
    @JsonKey(fromJson: _parseDouble) required double remainingBalance,
    required String status,
    DateTime? paidAt,
    @JsonKey(fromJson: _parseDouble) required double actualPaidAmount,
    @JsonKey(fromJson: _parseDouble) required double lateFee,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String loanId,
  }) = _PaymentSchedule;

  const PaymentSchedule._();

  factory PaymentSchedule.fromJson(Map<String, dynamic> json) =>
      _$PaymentScheduleFromJson(json);
}

// 안전한 double 파싱 함수
double _parseDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) {
    try {
      return double.parse(value);
    } catch (e) {
      return 0.0;
    }
  }
  return 0.0;
}

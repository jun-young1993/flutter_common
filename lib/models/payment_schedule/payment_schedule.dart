import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_schedule.freezed.dart';
part 'payment_schedule.g.dart';

@freezed
class PaymentSchedule with _$PaymentSchedule {
  const factory PaymentSchedule({
    required String id,
    required int paymentNumber,
    required DateTime paymentDate,
    required double principalAmount,
    required double interestAmount,
    required double totalAmount,
    required double remainingBalance,
    required String status,
    DateTime? paidAt,
    required double actualPaidAmount,
    required double lateFee,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String loanId,
  }) = _PaymentSchedule;

  const PaymentSchedule._();

  factory PaymentSchedule.fromJson(Map<String, dynamic> json) =>
      _$PaymentScheduleFromJson(json);
}

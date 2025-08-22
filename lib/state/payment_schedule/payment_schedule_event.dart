import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_schedule_event.freezed.dart';

@freezed
class PaymentScheduleEvent with _$PaymentScheduleEvent {
  const factory PaymentScheduleEvent.getPaymentStatus() = GetPaymentStatus;
}

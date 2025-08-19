import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_schedule_event.freezed.dart';

@freezed
class PaymentScheduleEvent with _$PaymentScheduleEvent {
  const factory PaymentScheduleEvent.initialize(String loanId) = Initialize;
  const factory PaymentScheduleEvent.findAll(String loanId) = FindAll;
  const factory PaymentScheduleEvent.addSkip(String loanId) = AddSkip;
  const factory PaymentScheduleEvent.setOrder(String loanId, String order) =
      SetOrder;
}

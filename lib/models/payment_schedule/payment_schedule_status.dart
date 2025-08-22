import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_schedule_status.freezed.dart';
part 'payment_schedule_status.g.dart';

@freezed
class PaymentScheduleStatus with _$PaymentScheduleStatus {
  const factory PaymentScheduleStatus({
    required String key,
    required String value,
    String? description,
  }) = _PaymentScheduleStatus;

  factory PaymentScheduleStatus.fromJson(Map<String, dynamic> json) =>
      _$PaymentScheduleStatusFromJson(json);
}

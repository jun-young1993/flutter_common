import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/payment_schedule/payment_schedule.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_schedule_state.freezed.dart';

@freezed
class PaymentScheduleState with _$PaymentScheduleState, BaseStateMixin {
  const factory PaymentScheduleState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) String? successMessage,
    @Default(null) List<PaymentSchedule>? paymentSchedules,
    @Default(0) int skipCount,
    @Default(10) int take,
    @Default('ASC') String order,
    @Default(false) bool hasMore,
  }) = _PaymentScheduleState;

  const PaymentScheduleState._();

  factory PaymentScheduleState.initialize() => const PaymentScheduleState();
}

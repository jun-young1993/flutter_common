import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/lib/handle_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/state/base/base_state.dart';

part 'verification_state.freezed.dart';

@freezed
class VerificationState with _$VerificationState, BaseStateMixin {
  const factory VerificationState({
    @Default(false) bool isLoading,
    @Default(false) bool isEmailVerifying,
    String? successMessage,
    @Default(null) String? email,
    AppException? error,
    DateTime? expiredAt,
    @Default(0) int remainingSeconds,
    @Default(false) bool isVerified,
  }) = _VerificationState;

  const VerificationState._();

  factory VerificationState.initialize() => const VerificationState();
}

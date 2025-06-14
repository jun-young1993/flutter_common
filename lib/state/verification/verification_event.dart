import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_event.freezed.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.sendAuthEmail(String email) = _SendAuthEmail;
  const factory VerificationEvent.removeSuccessMessage() =
      _RemoveSuccessMessage;
  const factory VerificationEvent.updateRemainingTime(int remainingSeconds) =
      _UpdateRemainingTime;
  const factory VerificationEvent.verifyAuthCode(String userId, String code) =
      _VerifyAuthCode;
  const factory VerificationEvent.expired() = _Expired;
}

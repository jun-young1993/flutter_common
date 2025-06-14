import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification.freezed.dart';
part 'verification.g.dart';

@freezed
class Verification with _$Verification {
  const factory Verification({
    required String id,
    required String email,
    required String code,
    required bool isVerified,
    required DateTime expiresAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Verification;

  const Verification._();
  factory Verification.fromJson(Map<String, dynamic> json) =>
      _$VerificationFromJson(json);
}

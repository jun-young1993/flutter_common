import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String? username,
    required String? email,
    required String type,
    required bool isActive,
    required bool isAdmin,
    required String createdAt,
    required String updatedAt,
    String? fcmToken,
  }) = _User;

  const User._();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

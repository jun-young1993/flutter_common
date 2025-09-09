import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initialize() = _Initialize;
  const factory UserEvent.deleteUserData(User user) = _DeleteUserData;
  const factory UserEvent.userBlock(String blockedUserId, String reason) =
      _UserBlock;
  const factory UserEvent.updateUserName(String userName) = _UpdateUserName;
}

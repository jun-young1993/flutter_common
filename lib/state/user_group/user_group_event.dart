import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group_event.freezed.dart';

@freezed
class UserGroupEvent with _$UserGroupEvent {
  const factory UserGroupEvent.initialize() = _Initialize;
  const factory UserGroupEvent.create() = _Create;
  const factory UserGroupEvent.clearError() = _ClearError;
  const factory UserGroupEvent.findAll() = _FindAll;
  const factory UserGroupEvent.addUser() = _AddUser;
  const factory UserGroupEvent.removeUser() = _RemoveUser;
}

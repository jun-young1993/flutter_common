import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group_event.freezed.dart';

@freezed
class UserGroupEvent with _$UserGroupEvent {
  const factory UserGroupEvent.initialize() = _Initialize;
  const factory UserGroupEvent.create(String? name, String? description) =
      _Create;
  const factory UserGroupEvent.clearError() = _ClearError;
  const factory UserGroupEvent.findAll() = _FindAll;
  const factory UserGroupEvent.addUserByNumber(String number) =
      _AddUserByNumber;
  const factory UserGroupEvent.removeUser() = _RemoveUser;
  const factory UserGroupEvent.updateName(String name) = _UpdateName;
  const factory UserGroupEvent.updateDescription(String description) =
      _UpdateDescription;
}

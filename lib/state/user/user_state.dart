import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/state/base/base_state.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState, BaseStateMixin {
  const factory UserState({
    @Default(null) AppException? addAppUserError,
    @Default(false) bool isAddingAppUser,
    @Default(false) bool isLoading,
    @Default(null) User? user,
    @Default(null) AppException? error,
    @Default([]) List<User> userList,
  }) = _UserState;

  const UserState._();

  factory UserState.initialize() => const UserState();
}

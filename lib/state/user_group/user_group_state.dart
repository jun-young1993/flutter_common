import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user_group/user_group.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group_state.freezed.dart';

@freezed
class UserGroupState with _$UserGroupState, BaseStateMixin {
  const factory UserGroupState(
      {@Default(false) bool isLoading,
      @Default(null) AppException? error,
      @Default([]) List<UserGroup> userGroups,
      @Default(null) UserGroup? userGroup}) = _UserGroupState;

  const UserGroupState._();

  factory UserGroupState.initialize() => const UserGroupState();
}

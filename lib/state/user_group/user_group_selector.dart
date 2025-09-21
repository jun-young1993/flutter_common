import 'package:flutter/material.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user_group/user_group.dart';
import 'package:flutter_common/state/user_group/user_group_bloc.dart';
import 'package:flutter_common/state/user_group/user_group_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserGroupSelector<T>
    extends BlocSelector<UserGroupBloc, UserGroupState, T> {
  const UserGroupSelector({
    Key? key,
    required T Function(UserGroupState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class UserGroupFindSelector extends UserGroupSelector<UserGroup?> {
  UserGroupFindSelector(Widget Function(UserGroup? userGroup) builder,
      {Key? key})
      : super(
            key: key,
            selector: (state) => state.userGroup,
            builder: (context, userGroup) => builder(userGroup));
}

class UserGroupLoadingSelector extends UserGroupSelector<bool> {
  UserGroupLoadingSelector(Widget Function(bool isLoading) builder, {Key? key})
      : super(
            key: key,
            selector: (state) => state.isLoading,
            builder: (context, isLoading) => builder(isLoading));
}

class UserGroupErrorSelector extends UserGroupSelector<AppException?> {
  UserGroupErrorSelector(Widget Function(AppException? error) builder,
      {Key? key})
      : super(
            key: key,
            selector: (state) => state.error,
            builder: (context, error) => builder(error));
}

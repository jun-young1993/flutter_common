import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/state/user/user_bloc.dart';
import 'package:flutter_common/state/user/user_state.dart';

class UserSelector<T> extends BlocSelector<UserBloc, UserState, T> {
  const UserSelector({
    Key? key,
    required T Function(UserState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class UserInfoSelector extends UserSelector<User?> {
  UserInfoSelector(Widget Function(User? user) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.user,
          builder: (context, user) => builder(user),
        );
}

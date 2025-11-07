import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/state/user_storage_limit/user_storage_limit_bloc.dart';
import 'package:flutter_common/state/user_storage_limit/user_storage_limit_state.dart';

class UserStorageLimitSelector<T>
    extends BlocSelector<UserStorageLimitBloc, UserStorageLimitState, T> {
  const UserStorageLimitSelector({
    Key? key,
    required T Function(UserStorageLimitState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class UserStorageLimitS3Selector
    extends UserStorageLimitSelector<UserStorageLimit?> {
  UserStorageLimitS3Selector(Widget Function(UserStorageLimit? s3) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.s3,
          builder: (context, s3) => builder(s3),
        );
}

class UserStorageLimitGroupAdminDefaultStorageLimitSelector
    extends UserStorageLimitSelector<UserStorageLimit?> {
  UserStorageLimitGroupAdminDefaultStorageLimitSelector(
      Widget Function(UserStorageLimit? groupAdminDefaultStorageLimit) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.groupAdminDefaultStorageLimit,
          builder: (context, groupAdminDefaultStorageLimit) =>
              builder(groupAdminDefaultStorageLimit),
        );
}

class UserStorageLimitGroupAdminDefaultStorageLimitIsLoadingSelector
    extends UserStorageLimitSelector<bool> {
  UserStorageLimitGroupAdminDefaultStorageLimitIsLoadingSelector(
      Widget Function(bool isLoading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.groupAdminDefaultStorageLimitIsLoading,
          builder: (context, isLoading) => builder(isLoading),
        );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/app-reward/point_transaction.dart';
import 'package:flutter_common/models/app-reward/user_point_balance.dart';
import 'package:flutter_common/state/app_reward/app_reward_bloc.dart';
import 'package:flutter_common/state/app_reward/app_reward_state.dart';

class AppRewardSelector<T>
    extends BlocSelector<AppRewardBloc, AppRewardState, T> {
  const AppRewardSelector({
    super.key,
    required super.selector,
    required super.builder,
  });
}

class AppRewardUserPointBalanceSelector
    extends AppRewardSelector<UserPointBalance?> {
  AppRewardUserPointBalanceSelector(
      Widget Function(UserPointBalance? userPointBalance) builder,
      {super.key})
      : super(
          selector: (state) => state.userPointBalance,
          builder: (context, userPointBalance) => builder(userPointBalance),
        );
}

class AppRewardLoadingSelector extends AppRewardSelector<bool> {
  AppRewardLoadingSelector(Widget Function(bool isLoading) builder, {super.key})
      : super(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) => builder(isLoading),
        );
}

class AppRewardPointTransactionsSelector
    extends AppRewardSelector<List<PointTransaction>?> {
  AppRewardPointTransactionsSelector(
      Widget Function(List<PointTransaction>? pointTransactions) builder,
      {super.key})
      : super(
          selector: (state) => state.pointTransactions,
          builder: (context, pointTransactions) => builder(pointTransactions),
        );
}

class AppRewardDailyUserRewardSelector
    extends AppRewardSelector<List<UserReward>?> {
  AppRewardDailyUserRewardSelector(
      Widget Function(List<UserReward>? dailyUserReward) builder,
      {super.key})
      : super(
          selector: (state) => state.dailyUserReward,
          builder: (context, dailyUserReward) => builder(dailyUserReward),
        );
}

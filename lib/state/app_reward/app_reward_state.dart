import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/app-reward/user_point_balance.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_reward_state.freezed.dart';

@freezed
class AppRewardState with _$AppRewardState {
  const factory AppRewardState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) UserPointBalance? userPointBalance,
  }) = _AppRewardState;

  const AppRewardState._();

  factory AppRewardState.initialize() => const AppRewardState();
}

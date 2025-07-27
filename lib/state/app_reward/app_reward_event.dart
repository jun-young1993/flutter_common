import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_reward_event.freezed.dart';

@freezed
class AppRewardEvent with _$AppRewardEvent {
  const factory AppRewardEvent.initialize() = _Initialize;
  const factory AppRewardEvent.clearError() = _ClearError;
  const factory AppRewardEvent.getPointTransactions() = _GetPointTransactions;
}

import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/goal/goal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/state/base/base_state.dart';

part 'goal_state.freezed.dart';

@freezed
class GoalState with _$GoalState, BaseStateMixin {
  const factory GoalState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default([]) List<Goal> goals,
  }) = _GoalState;

  const GoalState._();

  factory GoalState.initialize() => const GoalState();
}

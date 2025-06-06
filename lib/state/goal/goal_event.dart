import 'package:flutter_common/models/goal/dto/create_goal_dto.dart';
import 'package:flutter_common/models/goal/dto/create_goal_progress_dto.dart';
import 'package:flutter_common/models/goal/goal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_event.freezed.dart';

@freezed
class GoalEvent with _$GoalEvent {
  const factory GoalEvent.initialize() = _Initialize;
  const factory GoalEvent.createGoal(CreateGoalDto goal) = _CreateGoal;
  const factory GoalEvent.updateGoal(Goal goal) = _UpdateGoal;
  const factory GoalEvent.deleteGoal(String goalId) = _DeleteGoal;
  const factory GoalEvent.addGoalUser(String goalId, String userId) =
      _AddGoalUser;
  const factory GoalEvent.removeGoalUser(String goalId, String userId) =
      _RemoveGoalUser;
  const factory GoalEvent.clearError() = _ClearError;
  const factory GoalEvent.addGoalProgress(CreateGoalProgressDto progress) =
      _AddGoalProgress;
}

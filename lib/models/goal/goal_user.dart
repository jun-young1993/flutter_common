import 'package:flutter_common/models/goal/goal_progress.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_user.freezed.dart';
part 'goal_user.g.dart';

@freezed
class GoalUser with _$GoalUser {
  const factory GoalUser({
    required String id,
    required String goalId,
    required String userId,
    required bool isAdmin,
    required User user,
    @Default([]) List<GoalProgress> goalProgresses,
  }) = _GoalUser;

  const GoalUser._();
  factory GoalUser.fromJson(Map<String, dynamic> json) =>
      _$GoalUserFromJson(json);

  bool get hasProgressToday =>
      goalProgresses.any((e) => e.isSameDate(DateTime.now()));
}

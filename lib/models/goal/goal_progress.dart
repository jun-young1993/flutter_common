import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'goal_progress.freezed.dart';
part 'goal_progress.g.dart';

@freezed
class GoalProgress with _$GoalProgress {
  const GoalProgress._(); // private constructor for methods

  const factory GoalProgress({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    required String goalUserId,
    required String goalId,
    required DateTime createdAt,
  }) = _GoalProgress;

  factory GoalProgress.fromJson(Map<String, dynamic> json) =>
      _$GoalProgressFromJson(json);

  bool isSameDate(DateTime otherDate) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    final progressDateStr = dateFormat.format(date);
    final otherDateStr = dateFormat.format(otherDate);
    return progressDateStr == otherDateStr;
  }
}

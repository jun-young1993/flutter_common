import 'package:flutter_common/models/goal/goal_user.dart';
import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal.freezed.dart';
part 'goal.g.dart';

@freezed
class Goal with _$Goal {
  const factory Goal({
    required String id,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required NoticeGroup? noticeGroup,
    @Default([]) List<GoalUser>? goalUsers,
  }) = _Goal;

  const Goal._();
  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
}

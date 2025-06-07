import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_goal_progress_dto.freezed.dart';
part 'create_goal_progress_dto.g.dart';

@freezed
class CreateGoalProgressDto with _$CreateGoalProgressDto {
  const factory CreateGoalProgressDto(
      {required DateTime date,
      required String goalUserId,
      required String goalId,
      String? title,
      String? description,
      @Default(false) bool isCompleted}) = _CreateGoalProgressDto;

  factory CreateGoalProgressDto.fromJson(Map<String, dynamic> json) =>
      _$CreateGoalProgressDtoFromJson(json);
}

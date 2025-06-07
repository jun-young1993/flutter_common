import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_goal_dto.freezed.dart';
part 'create_goal_dto.g.dart';

@freezed
class CreateGoalDto with _$CreateGoalDto {
  const factory CreateGoalDto({
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String userId,
    @Default(false) bool isCompleted,
  }) = _CreateGoalDto;

  factory CreateGoalDto.fromJson(Map<String, dynamic> json) =>
      _$CreateGoalDtoFromJson(json);
}

import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.initialize() = _Initialize;
}

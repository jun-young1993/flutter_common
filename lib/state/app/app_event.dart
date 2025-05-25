import 'package:flutter_common/extensions/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initilize() = _Initilize;
  const factory AppEvent.clearError() = _ClearError;
  const factory AppEvent.setError(AppException error) = _SetError;
}

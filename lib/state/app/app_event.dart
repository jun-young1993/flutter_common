import 'package:flutter_common/extensions/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initialize() = _Initialize;
  const factory AppEvent.clearError() = _ClearError;
  const factory AppEvent.setError(AppException error) = _SetError;
  const factory AppEvent.setLoading(bool isLoading) = _SetLoading;
}

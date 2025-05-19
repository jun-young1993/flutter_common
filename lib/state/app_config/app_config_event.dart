import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_event.freezed.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.initialize(String key) = InitializeEvent;
}

import 'package:flutter_common/constants/juny_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_event.freezed.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.initialize(AppKeys key) = InitializeEvent;
  const factory AppConfigEvent.checkCanUpdate(AppKeys key, String version) =
      CheckCanUpdateEvent;
  const factory AppConfigEvent.moveUpdateStore() = UpdateEvent;
}

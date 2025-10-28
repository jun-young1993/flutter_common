import 'package:flutter/material.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_event.freezed.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.initialize(AppKeys key, Locale? defaultLocale) =
      InitializeEvent;
  const factory AppConfigEvent.checkCanUpdate(AppKeys key, String version) =
      CheckCanUpdateEvent;
  const factory AppConfigEvent.moveUpdateStore() = UpdateEvent;
  const factory AppConfigEvent.setLanguage(AppLanguage language) =
      SetLanguageEvent;
}

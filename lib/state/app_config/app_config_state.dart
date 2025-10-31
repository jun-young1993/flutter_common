import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'app_config_state.freezed.dart';

enum AppLanguage {
  ko,
  en,
}

extension AppLanguageExtension on AppLanguage {
  Locale toLocale() {
    switch (this) {
      case AppLanguage.ko:
        return const Locale('ko');
      case AppLanguage.en:
        return const Locale('en');
    }
  }
}

@freezed
class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    @Default("") String key,
    @Default("0.0.0") String version,
    @Default("") String description,
    @Default(false) bool isUpdateAvailable,
    @Default("") String appleId,
    @Default("") String packageName,
    @Default(AppLanguage.en) AppLanguage language,
    @Default(null) String? appStoreUrl,
    @Default(null) String? googlePlayUrl,
    @Default(null) String? redirectUrl,
  }) = _AppConfigState;

  factory AppConfigState.initialize() => const AppConfigState();
}

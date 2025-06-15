import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_state.freezed.dart';

@freezed
class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    @Default("") String key,
    @Default("0.0.0") String version,
    @Default("") String description,
    @Default(false) bool isUpdateAvailable,
    @Default("") String appleId,
    @Default("") String packageName,
  }) = _AppConfigState;

  factory AppConfigState.initialize() => const AppConfigState();
}

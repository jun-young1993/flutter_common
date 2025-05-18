import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_config_state.freezed.dart';

@freezed
class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    @Default(null) String? key,
    @Default(null) String? version,
  }) = _AppConfigState;

  factory AppConfigState.initialize() => const AppConfigState();
}

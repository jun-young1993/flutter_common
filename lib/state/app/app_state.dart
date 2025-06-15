import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/state/base/base_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState, BaseStateMixin {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) User? user,
  }) = _AppState;

  const AppState._();

  factory AppState.initialize() => const AppState();
}

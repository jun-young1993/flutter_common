import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) User? user,
  }) = _AppState;

  factory AppState.initilize() => const AppState();
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/app_reward/app_reward_event.dart';
import 'package:flutter_common/state/app_reward/app_reward_state.dart';

class AppRewardBloc extends Bloc<AppRewardEvent, AppRewardState> {
  AppRewardBloc() : super(AppRewardState.initialize()) {
    on<AppRewardEvent>(
      (event, emit) async {
        await event.map(
          initialize: (e) async {
            await _handleEvent(emit, () async {});
          },
          clearError: (e) async {
            emit(state.copyWith(isLoading: false, error: null));
          },
        );
      },
    );
  }

  Future<void> _handleEvent<T>(
    Emitter<AppRewardState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await action();

      add(const AppRewardEvent.clearError());
    } on AppException catch (e) {
      print('🔥 [ERROR] AppException: $e');

      emit(state.copyWith(isLoading: false, error: e));
    } catch (e) {
      print('🔥 [ERROR] Unknown error: $e');

      emit(state.copyWith(
          isLoading: false,
          error: defaultError ?? AppException.unknown(e.toString())));
    }
  }
}

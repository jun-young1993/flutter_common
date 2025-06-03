import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/app/app_event.dart';
import 'package:flutter_common/state/app/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initilize()) {
    on<AppEvent>(
      (event, emit) async {
        await event.map(
          initilize: (e) async {
            await _handleEvent(emit, () async {});
          },
          initialize: (e) async {
            await _handleEvent(emit, () async {});
          },
          clearError: (e) async {
            emit(state.copyWith(isLoading: false, error: null));
          },
          setError: (e) async {
            if (e is AppException) {
              emit(state.copyWith(error: e.error));
            } else {
              emit(state.copyWith(
                  error: AppException.unknown(e.error.toString())));
            }
          },
          setLoading: (e) async {
            emit(state.copyWith(isLoading: e.isLoading));
          },
        );
      },
    );
  }

  Future<void> _handleEvent<T>(
    Emitter<AppState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await action();

      add(const AppEvent.clearError());
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

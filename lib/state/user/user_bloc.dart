import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/user_repository.dart';
import 'package:flutter_common/state/user/user_event.dart';
import 'package:flutter_common/state/user/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserState.initialize()) {
    on<UserEvent>((event, emit) async {
      try {
        await event.map(initialize: (e) async {
          await _handleEvent(emit, () async {
            final user = await userRepository.getUserInfo();
            emit(state.copyWith(user: user));
          });
        });
      } catch (e) {
        await _handleEvent(emit, () async {},
            defaultError: AppException.unknown(e.toString()));
      }
    });
  }

  Future<void> _handleEvent<T>(
    Emitter<UserState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await action();
    } on AppException catch (e) {
      print('🔥 [ERROR] AppException: $e');
      emit(state.copyWith(error: e));
    } catch (e) {
      print('🔥 [ERROR] Unknown error: $e');
      emit(state.copyWith(
          error: defaultError ?? AppException.unknown(e.toString())));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}

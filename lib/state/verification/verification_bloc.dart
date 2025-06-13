import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/verification_repository.dart';
import 'package:flutter_common/state/lib/handle_event.dart';
import 'package:flutter_common/state/verification/verification_event.dart';
import 'package:flutter_common/state/verification/verification_state.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc({
    required VerificationRepository verificationRepository,
  }) : super(VerificationState.initialize()) {
    on<VerificationEvent>((event, emit) async {
      await event.map(
        sendAuthEmail: (e) async {
          await _handleEvent(
            emit,
            () async {
              final response =
                  await verificationRepository.sendAuthEmail(e.email);

              emit(state.copyWith(
                successMessage: response.message,
                isEmailVerifying: true,
              ));
              add(const VerificationEvent.removeSuccessMessage());
            },
          );
        },
        removeSuccessMessage: (e) {
          emit(state.copyWith(successMessage: null));
        },
      );
    });
  }
  Future<void> _handleEvent<T>(
    Emitter<VerificationState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit((state as dynamic).copyWith(isLoading: true));
    try {
      await action();
    } on AppException catch (e) {
      print('🔥 [ERROR] AppException: $e');
      emit((state as dynamic).copyWith(error: e));
    } catch (e) {
      print('🔥 [ERROR] Unknown error: $e');
      emit((state as dynamic)
          .copyWith(error: defaultError ?? AppException.unknown(e.toString())));
    } finally {
      emit((state as dynamic).copyWith(isLoading: false));
    }
  }
}

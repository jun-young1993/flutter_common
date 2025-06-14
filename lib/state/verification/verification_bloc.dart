import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/verification_repository.dart';
import 'package:flutter_common/state/lib/handle_event.dart';
import 'package:flutter_common/state/verification/verification_event.dart';
import 'package:flutter_common/state/verification/verification_state.dart';
import 'dart:async';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  Timer? _countdownTimer;
  final VerificationRepository _verificationRepository;

  VerificationBloc({
    required VerificationRepository verificationRepository,
  })  : _verificationRepository = verificationRepository,
        super(VerificationState.initialize()) {
    on<VerificationEvent>((event, emit) async {
      await event.map(
        sendAuthEmail: (e) async {
          await _handleEvent(
            emit,
            () async {
              final response =
                  await _verificationRepository.sendAuthEmail(e.email);

              emit(state.copyWith(
                email: e.email,
                successMessage: '인증번호가 발송되었습니다.',
                isEmailVerifying: true,
                expiredAt: response.expiresAt, // 임시로 3분 설정
              ));

              // 기존 타이머가 있다면 취소
              _countdownTimer?.cancel();

              // 새로운 타이머 시작
              _startCountdown(emit);

              add(const VerificationEvent.removeSuccessMessage());
            },
          );
        },
        removeSuccessMessage: (e) {
          emit(state.copyWith(successMessage: null));
        },
        updateRemainingTime: (e) {
          emit(state.copyWith(remainingSeconds: e.remainingSeconds));
        },
        expired: (e) {
          emit(state.copyWith(
            isEmailVerifying: false,
            expiredAt: null,
          ));
        },
        verifyAuthCode: (e) async {
          await _handleEvent(
            emit,
            () async {
              if (state.email == null) {
                throw const AppException.unknown('이메일을 입력해주세요.');
              }

              await _verificationRepository.verifyAuthCode(
                  e.userId, e.code, state.email!);
              emit(state.copyWith(
                isEmailVerifying: false,
                expiredAt: null,
                isVerified: true,
              ));
            },
          );
        },
      );
    });
  }

  void _startCountdown(Emitter<VerificationState> emit) {
    if (state.expiredAt == null) return;

    final now = DateTime.now();
    final expiredAt = state.expiredAt!;

    // 초기 남은 시간 계산
    int remainingSeconds = expiredAt.difference(now).inSeconds;
    if (remainingSeconds > 0) {
      emit(state.copyWith(remainingSeconds: remainingSeconds));
    }

    // 1초마다 타이머 실행
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      remainingSeconds = expiredAt.difference(now).inSeconds;

      if (remainingSeconds <= 0) {
        add(const VerificationEvent.expired());
        timer.cancel();
      } else {
        add(VerificationEvent.updateRemainingTime(remainingSeconds));
      }
    });
  }

  @override
  Future<void> close() {
    _countdownTimer?.cancel();
    return super.close();
  }

  Future<void> _handleEvent<T>(
    Emitter<VerificationState> emit,
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

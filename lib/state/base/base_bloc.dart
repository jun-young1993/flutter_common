import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/base/base_state.dart';

/// 모든 BLoC의 공통 기능을 제공하는 추상 베이스 클래스
///
/// 이 클래스는 다음 기능들을 표준화합니다:
/// - 에러 처리 (_handleEvent 메서드)
/// - 로딩 상태 관리
/// - 로깅 및 디버깅
/// - State의 copyWith 패턴 지원
abstract class BaseBloc<Event, State extends BaseStateMixin>
    extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState);

  /// 공통 이벤트 처리 메서드
  ///
  /// 모든 BLoC에서 반복되던 _handleEvent 패턴을 표준화합니다.
  /// - 로딩 상태 자동 관리
  /// - AppException 및 일반 예외 처리
  /// - 에러 로깅
  /// - finally 블록에서 로딩 상태 해제
  ///
  /// [emit] - State를 방출하는 Emitter
  /// [action] - 실행할 비동기 작업
  /// [defaultError] - 알 수 없는 에러 발생 시 사용할 기본 AppException
  Future<void> handleEvent<T>(
    Emitter<State> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    // 로딩 상태 시작
    emit(setLoadingState(state, true));

    try {
      await action();
    } on AppException catch (e) {
      // AppException 처리
      logError('AppException', e, StackTrace.current);
      emit(setErrorState(state, e));
    } catch (e) {
      // 일반 예외 처리
      final appException = defaultError ?? AppException.unknown(e.toString());
      logError('Unknown error', e, StackTrace.current);
      emit(setErrorState(state, appException));
    } finally {
      // 로딩 상태 해제 (에러가 발생한 경우에는 이미 setErrorState에서 처리됨)
      if (!hasError(state)) {
        emit(setLoadingState(state, false));
      }
    }
  }

  /// 성공적인 작업 완료 후 에러 상태를 클리어하는 헬퍼 메서드
  ///
  /// [emit] - State를 방출하는 Emitter
  /// [action] - 실행할 비동기 작업
  /// [defaultError] - 알 수 없는 에러 발생 시 사용할 기본 AppException
  Future<void> handleEventWithClearError<T>(
    Emitter<State> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    await handleEvent(emit, action, defaultError: defaultError);

    // 성공적으로 완료된 경우 에러 상태 클리어
    if (!hasError(state)) {
      emit(clearErrorState(state));
    }
  }

  /// State에 로딩 상태를 설정하는 추상 메서드
  ///
  /// 각 BLoC에서 자신의 State 타입에 맞게 구현해야 합니다.
  /// 예: state.copyWith(isLoading: isLoading)
  State setLoadingState(State currentState, bool isLoading);

  /// State에 에러 상태를 설정하는 추상 메서드
  ///
  /// 각 BLoC에서 자신의 State 타입에 맞게 구현해야 합니다.
  /// 예: state.copyWith(isLoading: false, error: error)
  State setErrorState(State currentState, AppException error);

  /// State의 에러 상태를 클리어하는 추상 메서드
  ///
  /// 각 BLoC에서 자신의 State 타입에 맞게 구현해야 합니다.
  /// 예: state.copyWith(isLoading: false, error: null)
  State clearErrorState(State currentState);

  /// 현재 State가 에러 상태인지 확인하는 추상 메서드
  ///
  /// 각 BLoC에서 자신의 State 타입에 맞게 구현해야 합니다.
  /// 예: state.error != null
  bool hasError(State currentState);

  /// 에러 로깅을 위한 메서드
  ///
  /// 개발 환경에서 디버깅을 위해 에러를 콘솔에 출력합니다.
  /// 프로덕션 환경에서는 로깅 서비스로 전송하도록 확장할 수 있습니다.
  void logError(String type, dynamic error, [StackTrace? stackTrace]) {
    debugPrint('🔥 [ERROR] $type in ${runtimeType.toString()}: $error');
    if (stackTrace != null) {
      debugPrint('StackTrace: \n$stackTrace');
    }
  }

  /// BLoC 생명주기 관리를 위한 메서드
  ///
  /// BLoC이 닫힐 때 리소스 정리를 수행합니다.
  @override
  Future<void> close() {
    logDebug('BLoC ${runtimeType.toString()} is closing');
    return super.close();
  }

  /// 디버그 로깅을 위한 메서드
  void logDebug(String message) {
    print('🐛 [DEBUG] $message');
  }
}

/// 공통 State 인터페이스
///
/// 모든 State 클래스가 구현해야 하는 공통 속성들을 정의합니다.
/// 이를 통해 BaseBloc에서 일관된 방식으로 State를 처리할 수 있습니다.
abstract class BaseState {
  bool get isLoading;
  AppException? get error;

  /// copyWith 메서드를 강제하여 불변성을 보장합니다.
  BaseState copyWith({
    bool? isLoading,
    AppException? error,
  });
}

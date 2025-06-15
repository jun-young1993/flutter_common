# BaseBloc 사용 가이드

## 개요

`BaseBloc`은 Flutter 공통 라이브러리에서 제공하는 BLoC 베이스 클래스로, 모든 BLoC에서 반복되던 코드를 표준화하고 중복을 제거합니다.

## 주요 기능

### 1. 표준화된 에러 처리

- `_handleEvent` 메서드 중복 제거
- `AppException` 및 일반 예외 자동 처리
- 일관된 에러 로깅

### 2. 로딩 상태 자동 관리

- 작업 시작 시 자동으로 `isLoading: true` 설정
- 작업 완료/에러 시 자동으로 `isLoading: false` 설정

### 3. 생명주기 관리

- BLoC 종료 시 자동 로깅
- 리소스 정리 지원

## 사용법

### 1. State 클래스에 BaseState 구현

```dart
@freezed
class UserState with _$UserState implements BaseState {
  const factory UserState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    User? user,
  }) = _UserState;

  factory UserState.initialize() => const UserState();
}
```

### 2. BLoC 클래스에서 BaseBloc 상속

```dart
class UserBloc extends BaseBloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserState.initialize()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          // BaseBloc의 handleEvent 사용
          await handleEvent(emit, () async {
            final user = await userRepository.getUserInfo();
            emit(state.copyWith(user: user));
          });
        },
        updateUser: (e) async {
          // 성공 시 에러 클리어하는 버전 사용
          await handleEventWithClearError(emit, () async {
            final updatedUser = await userRepository.updateUser(e.user);
            emit(state.copyWith(user: updatedUser));
          });
        },
      );
    });
  }

  // BaseBloc 추상 메서드 구현
  @override
  UserState setLoadingState(UserState currentState, bool isLoading) {
    return currentState.copyWith(isLoading: isLoading);
  }

  @override
  UserState setErrorState(UserState currentState, AppException error) {
    return currentState.copyWith(isLoading: false, error: error);
  }

  @override
  UserState clearErrorState(UserState currentState) {
    return currentState.copyWith(isLoading: false, error: null);
  }

  @override
  bool hasError(UserState currentState) {
    return currentState.error != null;
  }
}
```

## 기존 코드에서 마이그레이션

### Before (기존 방식)

```dart
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userRepository}) : super(UserState.initialize()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          await _handleEvent(emit, () async {
            final user = await userRepository.getUserInfo();
            emit(state.copyWith(user: user));
          });
        },
      );
    });
  }

  // 모든 BLoC에서 중복되는 메서드
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
```

### After (BaseBloc 사용)

```dart
class UserBloc extends BaseBloc<UserEvent, UserState> {
  UserBloc({required this.userRepository}) : super(UserState.initialize()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          // BaseBloc의 handleEvent 사용 - _handleEvent 메서드 불필요
          await handleEvent(emit, () async {
            final user = await userRepository.getUserInfo();
            emit(state.copyWith(user: user));
          });
        },
      );
    });
  }

  // BaseBloc 추상 메서드만 구현하면 됨
  @override
  UserState setLoadingState(UserState currentState, bool isLoading) {
    return currentState.copyWith(isLoading: isLoading);
  }

  @override
  UserState setErrorState(UserState currentState, AppException error) {
    return currentState.copyWith(isLoading: false, error: error);
  }

  @override
  UserState clearErrorState(UserState currentState) {
    return currentState.copyWith(isLoading: false, error: null);
  }

  @override
  bool hasError(UserState currentState) {
    return currentState.error != null;
  }
}
```

## 제공되는 메서드

### handleEvent

기본적인 에러 처리와 로딩 상태 관리를 제공합니다.

```dart
await handleEvent(emit, () async {
  // 비즈니스 로직
});
```

### handleEventWithClearError

성공적으로 완료된 경우 에러 상태를 자동으로 클리어합니다.

```dart
await handleEventWithClearError(emit, () async {
  // 비즈니스 로직
});
```

## 장점

1. **코드 중복 제거**: 모든 BLoC에서 반복되던 `_handleEvent` 메서드 제거
2. **일관된 에러 처리**: 표준화된 `AppException` 처리
3. **자동 로깅**: 에러 및 생명주기 자동 로깅
4. **유지보수성 향상**: 공통 로직 변경 시 한 곳에서만 수정
5. **개발 속도 향상**: 새로운 BLoC 작성 시간 단축
6. **테스트 용이성**: 표준화된 구조로 테스트 작성 간소화

## 주의사항

1. State 클래스는 반드시 `BaseState`를 구현해야 합니다.
2. `isLoading`과 `error` 필드는 필수입니다.
3. 기존 BLoC을 마이그레이션할 때는 `_handleEvent` 메서드를 제거하고 BaseBloc의 메서드를 사용하세요.

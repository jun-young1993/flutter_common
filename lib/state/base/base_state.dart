import 'package:flutter_common/extensions/app_exception.dart';

/// 모든 BLoC State 클래스가 구현해야 하는 기본 인터페이스
///
/// 이 인터페이스는 BaseBloc과 함께 사용되어 일관된 상태 관리를 제공합니다.
/// 모든 State 클래스는 다음 필드들을 포함해야 합니다:
/// - isLoading: 로딩 상태를 나타내는 boolean 값
/// - error: 에러 상태를 나타내는 AppException (nullable)
abstract class BaseState {
  /// 현재 로딩 중인지를 나타내는 상태
  bool get isLoading;

  /// 발생한 에러 정보 (에러가 없으면 null)
  AppException? get error;
}

/// State 클래스에서 사용할 수 있는 공통 유틸리티 메서드들을 제공하는 믹스인
///
/// 이 믹스인을 사용하면 State 클래스에서 공통적으로 필요한 헬퍼 메서드들을
/// 자동으로 사용할 수 있습니다.
mixin BaseStateMixin implements BaseState {
  /// 현재 상태에 에러가 있는지 확인
  bool get hasError => error != null;

  /// 현재 상태가 로딩 중이고 에러가 없는지 확인
  bool get isLoadingWithoutError => isLoading && !hasError;

  /// 현재 상태가 성공 상태인지 확인 (로딩 중이지 않고 에러가 없음)
  bool get isSuccess => !isLoading && !hasError;

  /// 현재 상태가 실패 상태인지 확인 (로딩 중이지 않고 에러가 있음)
  bool get isFailure => !isLoading && hasError;
}

/// Freezed State 클래스에서 사용할 수 있는 표준 필드 정의
///
/// 사용 예시:
/// ```dart
/// @freezed
/// class UserState with _$UserState, BaseStateMixin {
///   const factory UserState({
///     @Default(false) bool isLoading,
///     @Default(null) AppException? error,
///     User? user,
///   }) = _UserState;
///
///   factory UserState.initialize() => const UserState();
/// }
/// ```
class BaseStateFields {
  /// 모든 State 클래스에서 사용해야 하는 표준 isLoading 필드
  static const bool defaultIsLoading = false;

  /// 모든 State 클래스에서 사용해야 하는 표준 error 필드
  static const AppException? defaultError = null;
}

/// State 클래스 생성을 위한 헬퍼 함수들
class BaseStateHelper {
  /// 초기 상태 생성 시 사용할 수 있는 헬퍼
  ///
  /// 사용 예시:
  /// ```dart
  /// factory UserState.initialize() => const UserState(
  ///   isLoading: BaseStateHelper.initialLoading,
  ///   error: BaseStateHelper.initialError,
  /// );
  /// ```
  static const bool initialLoading = false;
  static const AppException? initialError = null;

  /// 로딩 상태로 변경할 때 사용
  static const bool loadingState = true;

  /// 에러 클리어 시 사용
  static const AppException? clearedError = null;
}

/// State 클래스 작성 가이드라인
/// 
/// 1. BaseState 인터페이스 구현 또는 BaseStateMixin 사용
/// 2. isLoading과 error 필드는 반드시 포함
/// 3. 기본값은 BaseStateFields의 상수 사용
/// 4. initialize() 팩토리 메서드 제공
/// 
/// 예시:
/// ```dart
/// @freezed
/// class ExampleState with _$ExampleState, BaseStateMixin {
///   const factory ExampleState({
///     @Default(BaseStateFields.defaultIsLoading) bool isLoading,
///     @Default(BaseStateFields.defaultError) AppException? error,
///     @Default([]) List<String> data,
///   }) = _ExampleState;
/// 
///   factory ExampleState.initialize() => const ExampleState();
/// }
/// ``` 
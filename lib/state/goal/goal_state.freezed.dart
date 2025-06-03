// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoalState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  List<Goal> get goals => throw _privateConstructorUsedError;

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalStateCopyWith<GoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalStateCopyWith<$Res> {
  factory $GoalStateCopyWith(GoalState value, $Res Function(GoalState) then) =
      _$GoalStateCopyWithImpl<$Res, GoalState>;
  @useResult
  $Res call({bool isLoading, AppException? error, List<Goal> goals});

  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$GoalStateCopyWithImpl<$Res, $Val extends GoalState>
    implements $GoalStateCopyWith<$Res> {
  _$GoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
    ) as $Val);
  }

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoalStateImplCopyWith<$Res>
    implements $GoalStateCopyWith<$Res> {
  factory _$$GoalStateImplCopyWith(
          _$GoalStateImpl value, $Res Function(_$GoalStateImpl) then) =
      __$$GoalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, AppException? error, List<Goal> goals});

  @override
  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$GoalStateImplCopyWithImpl<$Res>
    extends _$GoalStateCopyWithImpl<$Res, _$GoalStateImpl>
    implements _$$GoalStateImplCopyWith<$Res> {
  __$$GoalStateImplCopyWithImpl(
      _$GoalStateImpl _value, $Res Function(_$GoalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? goals = null,
  }) {
    return _then(_$GoalStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
    ));
  }
}

/// @nodoc

class _$GoalStateImpl implements _GoalState {
  const _$GoalStateImpl(
      {this.isLoading = false,
      this.error = null,
      final List<Goal> goals = const []})
      : _goals = goals;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  final List<Goal> _goals;
  @override
  @JsonKey()
  List<Goal> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  String toString() {
    return 'GoalState(isLoading: $isLoading, error: $error, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error,
      const DeepCollectionEquality().hash(_goals));

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalStateImplCopyWith<_$GoalStateImpl> get copyWith =>
      __$$GoalStateImplCopyWithImpl<_$GoalStateImpl>(this, _$identity);
}

abstract class _GoalState implements GoalState {
  const factory _GoalState(
      {final bool isLoading,
      final AppException? error,
      final List<Goal> goals}) = _$GoalStateImpl;

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  List<Goal> get goals;

  /// Create a copy of GoalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalStateImplCopyWith<_$GoalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

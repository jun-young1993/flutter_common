// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_reward_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppRewardState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  UserPointBalance? get userPointBalance => throw _privateConstructorUsedError;

  /// Create a copy of AppRewardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppRewardStateCopyWith<AppRewardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRewardStateCopyWith<$Res> {
  factory $AppRewardStateCopyWith(
          AppRewardState value, $Res Function(AppRewardState) then) =
      _$AppRewardStateCopyWithImpl<$Res, AppRewardState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      UserPointBalance? userPointBalance});

  $AppExceptionCopyWith<$Res>? get error;
  $UserPointBalanceCopyWith<$Res>? get userPointBalance;
}

/// @nodoc
class _$AppRewardStateCopyWithImpl<$Res, $Val extends AppRewardState>
    implements $AppRewardStateCopyWith<$Res> {
  _$AppRewardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppRewardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? userPointBalance = freezed,
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
      userPointBalance: freezed == userPointBalance
          ? _value.userPointBalance
          : userPointBalance // ignore: cast_nullable_to_non_nullable
              as UserPointBalance?,
    ) as $Val);
  }

  /// Create a copy of AppRewardState
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

  /// Create a copy of AppRewardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPointBalanceCopyWith<$Res>? get userPointBalance {
    if (_value.userPointBalance == null) {
      return null;
    }

    return $UserPointBalanceCopyWith<$Res>(_value.userPointBalance!, (value) {
      return _then(_value.copyWith(userPointBalance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppRewardStateImplCopyWith<$Res>
    implements $AppRewardStateCopyWith<$Res> {
  factory _$$AppRewardStateImplCopyWith(_$AppRewardStateImpl value,
          $Res Function(_$AppRewardStateImpl) then) =
      __$$AppRewardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      UserPointBalance? userPointBalance});

  @override
  $AppExceptionCopyWith<$Res>? get error;
  @override
  $UserPointBalanceCopyWith<$Res>? get userPointBalance;
}

/// @nodoc
class __$$AppRewardStateImplCopyWithImpl<$Res>
    extends _$AppRewardStateCopyWithImpl<$Res, _$AppRewardStateImpl>
    implements _$$AppRewardStateImplCopyWith<$Res> {
  __$$AppRewardStateImplCopyWithImpl(
      _$AppRewardStateImpl _value, $Res Function(_$AppRewardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppRewardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? userPointBalance = freezed,
  }) {
    return _then(_$AppRewardStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      userPointBalance: freezed == userPointBalance
          ? _value.userPointBalance
          : userPointBalance // ignore: cast_nullable_to_non_nullable
              as UserPointBalance?,
    ));
  }
}

/// @nodoc

class _$AppRewardStateImpl extends _AppRewardState {
  const _$AppRewardStateImpl(
      {this.isLoading = false, this.error = null, this.userPointBalance = null})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  @override
  @JsonKey()
  final UserPointBalance? userPointBalance;

  @override
  String toString() {
    return 'AppRewardState(isLoading: $isLoading, error: $error, userPointBalance: $userPointBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppRewardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.userPointBalance, userPointBalance) ||
                other.userPointBalance == userPointBalance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, userPointBalance);

  /// Create a copy of AppRewardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppRewardStateImplCopyWith<_$AppRewardStateImpl> get copyWith =>
      __$$AppRewardStateImplCopyWithImpl<_$AppRewardStateImpl>(
          this, _$identity);
}

abstract class _AppRewardState extends AppRewardState {
  const factory _AppRewardState(
      {final bool isLoading,
      final AppException? error,
      final UserPointBalance? userPointBalance}) = _$AppRewardStateImpl;
  const _AppRewardState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  UserPointBalance? get userPointBalance;

  /// Create a copy of AppRewardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppRewardStateImplCopyWith<_$AppRewardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

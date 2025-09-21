// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_group_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserGroupState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  UserGroup? get userGroup => throw _privateConstructorUsedError;

  /// Create a copy of UserGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGroupStateCopyWith<UserGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupStateCopyWith<$Res> {
  factory $UserGroupStateCopyWith(
          UserGroupState value, $Res Function(UserGroupState) then) =
      _$UserGroupStateCopyWithImpl<$Res, UserGroupState>;
  @useResult
  $Res call({bool isLoading, AppException? error, UserGroup? userGroup});

  $AppExceptionCopyWith<$Res>? get error;
  $UserGroupCopyWith<$Res>? get userGroup;
}

/// @nodoc
class _$UserGroupStateCopyWithImpl<$Res, $Val extends UserGroupState>
    implements $UserGroupStateCopyWith<$Res> {
  _$UserGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? userGroup = freezed,
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
      userGroup: freezed == userGroup
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup?,
    ) as $Val);
  }

  /// Create a copy of UserGroupState
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

  /// Create a copy of UserGroupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserGroupCopyWith<$Res>? get userGroup {
    if (_value.userGroup == null) {
      return null;
    }

    return $UserGroupCopyWith<$Res>(_value.userGroup!, (value) {
      return _then(_value.copyWith(userGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserGroupStateImplCopyWith<$Res>
    implements $UserGroupStateCopyWith<$Res> {
  factory _$$UserGroupStateImplCopyWith(_$UserGroupStateImpl value,
          $Res Function(_$UserGroupStateImpl) then) =
      __$$UserGroupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, AppException? error, UserGroup? userGroup});

  @override
  $AppExceptionCopyWith<$Res>? get error;
  @override
  $UserGroupCopyWith<$Res>? get userGroup;
}

/// @nodoc
class __$$UserGroupStateImplCopyWithImpl<$Res>
    extends _$UserGroupStateCopyWithImpl<$Res, _$UserGroupStateImpl>
    implements _$$UserGroupStateImplCopyWith<$Res> {
  __$$UserGroupStateImplCopyWithImpl(
      _$UserGroupStateImpl _value, $Res Function(_$UserGroupStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? userGroup = freezed,
  }) {
    return _then(_$UserGroupStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      userGroup: freezed == userGroup
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup?,
    ));
  }
}

/// @nodoc

class _$UserGroupStateImpl extends _UserGroupState {
  const _$UserGroupStateImpl(
      {this.isLoading = false, this.error = null, this.userGroup = null})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  @override
  @JsonKey()
  final UserGroup? userGroup;

  @override
  String toString() {
    return 'UserGroupState(isLoading: $isLoading, error: $error, userGroup: $userGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGroupStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.userGroup, userGroup) ||
                other.userGroup == userGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, userGroup);

  /// Create a copy of UserGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGroupStateImplCopyWith<_$UserGroupStateImpl> get copyWith =>
      __$$UserGroupStateImplCopyWithImpl<_$UserGroupStateImpl>(
          this, _$identity);
}

abstract class _UserGroupState extends UserGroupState {
  const factory _UserGroupState(
      {final bool isLoading,
      final AppException? error,
      final UserGroup? userGroup}) = _$UserGroupStateImpl;
  const _UserGroupState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  UserGroup? get userGroup;

  /// Create a copy of UserGroupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGroupStateImplCopyWith<_$UserGroupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

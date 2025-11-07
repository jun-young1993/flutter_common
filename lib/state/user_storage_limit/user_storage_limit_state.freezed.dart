// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_storage_limit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserStorageLimitState {
  bool get s3IsLoading => throw _privateConstructorUsedError;
  AppException? get s3Error => throw _privateConstructorUsedError;
  UserStorageLimit? get s3 => throw _privateConstructorUsedError;
  bool get groupAdminDefaultStorageLimitIsLoading =>
      throw _privateConstructorUsedError;
  AppException? get groupAdminDefaultStorageLimitError =>
      throw _privateConstructorUsedError;
  UserStorageLimit? get groupAdminDefaultStorageLimit =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStorageLimitStateCopyWith<UserStorageLimitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStorageLimitStateCopyWith<$Res> {
  factory $UserStorageLimitStateCopyWith(UserStorageLimitState value,
          $Res Function(UserStorageLimitState) then) =
      _$UserStorageLimitStateCopyWithImpl<$Res, UserStorageLimitState>;
  @useResult
  $Res call(
      {bool s3IsLoading,
      AppException? s3Error,
      UserStorageLimit? s3,
      bool groupAdminDefaultStorageLimitIsLoading,
      AppException? groupAdminDefaultStorageLimitError,
      UserStorageLimit? groupAdminDefaultStorageLimit});

  $AppExceptionCopyWith<$Res>? get s3Error;
  $UserStorageLimitCopyWith<$Res>? get s3;
  $AppExceptionCopyWith<$Res>? get groupAdminDefaultStorageLimitError;
  $UserStorageLimitCopyWith<$Res>? get groupAdminDefaultStorageLimit;
}

/// @nodoc
class _$UserStorageLimitStateCopyWithImpl<$Res,
        $Val extends UserStorageLimitState>
    implements $UserStorageLimitStateCopyWith<$Res> {
  _$UserStorageLimitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3IsLoading = null,
    Object? s3Error = freezed,
    Object? s3 = freezed,
    Object? groupAdminDefaultStorageLimitIsLoading = null,
    Object? groupAdminDefaultStorageLimitError = freezed,
    Object? groupAdminDefaultStorageLimit = freezed,
  }) {
    return _then(_value.copyWith(
      s3IsLoading: null == s3IsLoading
          ? _value.s3IsLoading
          : s3IsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      s3Error: freezed == s3Error
          ? _value.s3Error
          : s3Error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      s3: freezed == s3
          ? _value.s3
          : s3 // ignore: cast_nullable_to_non_nullable
              as UserStorageLimit?,
      groupAdminDefaultStorageLimitIsLoading: null ==
              groupAdminDefaultStorageLimitIsLoading
          ? _value.groupAdminDefaultStorageLimitIsLoading
          : groupAdminDefaultStorageLimitIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupAdminDefaultStorageLimitError: freezed ==
              groupAdminDefaultStorageLimitError
          ? _value.groupAdminDefaultStorageLimitError
          : groupAdminDefaultStorageLimitError // ignore: cast_nullable_to_non_nullable
              as AppException?,
      groupAdminDefaultStorageLimit: freezed == groupAdminDefaultStorageLimit
          ? _value.groupAdminDefaultStorageLimit
          : groupAdminDefaultStorageLimit // ignore: cast_nullable_to_non_nullable
              as UserStorageLimit?,
    ) as $Val);
  }

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get s3Error {
    if (_value.s3Error == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(_value.s3Error!, (value) {
      return _then(_value.copyWith(s3Error: value) as $Val);
    });
  }

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStorageLimitCopyWith<$Res>? get s3 {
    if (_value.s3 == null) {
      return null;
    }

    return $UserStorageLimitCopyWith<$Res>(_value.s3!, (value) {
      return _then(_value.copyWith(s3: value) as $Val);
    });
  }

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get groupAdminDefaultStorageLimitError {
    if (_value.groupAdminDefaultStorageLimitError == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(
        _value.groupAdminDefaultStorageLimitError!, (value) {
      return _then(
          _value.copyWith(groupAdminDefaultStorageLimitError: value) as $Val);
    });
  }

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStorageLimitCopyWith<$Res>? get groupAdminDefaultStorageLimit {
    if (_value.groupAdminDefaultStorageLimit == null) {
      return null;
    }

    return $UserStorageLimitCopyWith<$Res>(
        _value.groupAdminDefaultStorageLimit!, (value) {
      return _then(
          _value.copyWith(groupAdminDefaultStorageLimit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStorageLimitStateImplCopyWith<$Res>
    implements $UserStorageLimitStateCopyWith<$Res> {
  factory _$$UserStorageLimitStateImplCopyWith(
          _$UserStorageLimitStateImpl value,
          $Res Function(_$UserStorageLimitStateImpl) then) =
      __$$UserStorageLimitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool s3IsLoading,
      AppException? s3Error,
      UserStorageLimit? s3,
      bool groupAdminDefaultStorageLimitIsLoading,
      AppException? groupAdminDefaultStorageLimitError,
      UserStorageLimit? groupAdminDefaultStorageLimit});

  @override
  $AppExceptionCopyWith<$Res>? get s3Error;
  @override
  $UserStorageLimitCopyWith<$Res>? get s3;
  @override
  $AppExceptionCopyWith<$Res>? get groupAdminDefaultStorageLimitError;
  @override
  $UserStorageLimitCopyWith<$Res>? get groupAdminDefaultStorageLimit;
}

/// @nodoc
class __$$UserStorageLimitStateImplCopyWithImpl<$Res>
    extends _$UserStorageLimitStateCopyWithImpl<$Res,
        _$UserStorageLimitStateImpl>
    implements _$$UserStorageLimitStateImplCopyWith<$Res> {
  __$$UserStorageLimitStateImplCopyWithImpl(_$UserStorageLimitStateImpl _value,
      $Res Function(_$UserStorageLimitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3IsLoading = null,
    Object? s3Error = freezed,
    Object? s3 = freezed,
    Object? groupAdminDefaultStorageLimitIsLoading = null,
    Object? groupAdminDefaultStorageLimitError = freezed,
    Object? groupAdminDefaultStorageLimit = freezed,
  }) {
    return _then(_$UserStorageLimitStateImpl(
      s3IsLoading: null == s3IsLoading
          ? _value.s3IsLoading
          : s3IsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      s3Error: freezed == s3Error
          ? _value.s3Error
          : s3Error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      s3: freezed == s3
          ? _value.s3
          : s3 // ignore: cast_nullable_to_non_nullable
              as UserStorageLimit?,
      groupAdminDefaultStorageLimitIsLoading: null ==
              groupAdminDefaultStorageLimitIsLoading
          ? _value.groupAdminDefaultStorageLimitIsLoading
          : groupAdminDefaultStorageLimitIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupAdminDefaultStorageLimitError: freezed ==
              groupAdminDefaultStorageLimitError
          ? _value.groupAdminDefaultStorageLimitError
          : groupAdminDefaultStorageLimitError // ignore: cast_nullable_to_non_nullable
              as AppException?,
      groupAdminDefaultStorageLimit: freezed == groupAdminDefaultStorageLimit
          ? _value.groupAdminDefaultStorageLimit
          : groupAdminDefaultStorageLimit // ignore: cast_nullable_to_non_nullable
              as UserStorageLimit?,
    ));
  }
}

/// @nodoc

class _$UserStorageLimitStateImpl extends _UserStorageLimitState {
  const _$UserStorageLimitStateImpl(
      {this.s3IsLoading = false,
      this.s3Error = null,
      this.s3 = null,
      this.groupAdminDefaultStorageLimitIsLoading = false,
      this.groupAdminDefaultStorageLimitError = null,
      this.groupAdminDefaultStorageLimit = null})
      : super._();

  @override
  @JsonKey()
  final bool s3IsLoading;
  @override
  @JsonKey()
  final AppException? s3Error;
  @override
  @JsonKey()
  final UserStorageLimit? s3;
  @override
  @JsonKey()
  final bool groupAdminDefaultStorageLimitIsLoading;
  @override
  @JsonKey()
  final AppException? groupAdminDefaultStorageLimitError;
  @override
  @JsonKey()
  final UserStorageLimit? groupAdminDefaultStorageLimit;

  @override
  String toString() {
    return 'UserStorageLimitState(s3IsLoading: $s3IsLoading, s3Error: $s3Error, s3: $s3, groupAdminDefaultStorageLimitIsLoading: $groupAdminDefaultStorageLimitIsLoading, groupAdminDefaultStorageLimitError: $groupAdminDefaultStorageLimitError, groupAdminDefaultStorageLimit: $groupAdminDefaultStorageLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStorageLimitStateImpl &&
            (identical(other.s3IsLoading, s3IsLoading) ||
                other.s3IsLoading == s3IsLoading) &&
            (identical(other.s3Error, s3Error) || other.s3Error == s3Error) &&
            (identical(other.s3, s3) || other.s3 == s3) &&
            (identical(other.groupAdminDefaultStorageLimitIsLoading,
                    groupAdminDefaultStorageLimitIsLoading) ||
                other.groupAdminDefaultStorageLimitIsLoading ==
                    groupAdminDefaultStorageLimitIsLoading) &&
            (identical(other.groupAdminDefaultStorageLimitError,
                    groupAdminDefaultStorageLimitError) ||
                other.groupAdminDefaultStorageLimitError ==
                    groupAdminDefaultStorageLimitError) &&
            (identical(other.groupAdminDefaultStorageLimit,
                    groupAdminDefaultStorageLimit) ||
                other.groupAdminDefaultStorageLimit ==
                    groupAdminDefaultStorageLimit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      s3IsLoading,
      s3Error,
      s3,
      groupAdminDefaultStorageLimitIsLoading,
      groupAdminDefaultStorageLimitError,
      groupAdminDefaultStorageLimit);

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStorageLimitStateImplCopyWith<_$UserStorageLimitStateImpl>
      get copyWith => __$$UserStorageLimitStateImplCopyWithImpl<
          _$UserStorageLimitStateImpl>(this, _$identity);
}

abstract class _UserStorageLimitState extends UserStorageLimitState {
  const factory _UserStorageLimitState(
          {final bool s3IsLoading,
          final AppException? s3Error,
          final UserStorageLimit? s3,
          final bool groupAdminDefaultStorageLimitIsLoading,
          final AppException? groupAdminDefaultStorageLimitError,
          final UserStorageLimit? groupAdminDefaultStorageLimit}) =
      _$UserStorageLimitStateImpl;
  const _UserStorageLimitState._() : super._();

  @override
  bool get s3IsLoading;
  @override
  AppException? get s3Error;
  @override
  UserStorageLimit? get s3;
  @override
  bool get groupAdminDefaultStorageLimitIsLoading;
  @override
  AppException? get groupAdminDefaultStorageLimitError;
  @override
  UserStorageLimit? get groupAdminDefaultStorageLimit;

  /// Create a copy of UserStorageLimitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStorageLimitStateImplCopyWith<_$UserStorageLimitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

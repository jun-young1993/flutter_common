// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isEmailVerifying => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  int get remainingSeconds => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isEmailVerifying,
      String? successMessage,
      String? email,
      AppException? error,
      DateTime? expiredAt,
      int remainingSeconds,
      bool isVerified});

  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEmailVerifying = null,
    Object? successMessage = freezed,
    Object? email = freezed,
    Object? error = freezed,
    Object? expiredAt = freezed,
    Object? remainingSeconds = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerifying: null == isEmailVerifying
          ? _value.isEmailVerifying
          : isEmailVerifying // ignore: cast_nullable_to_non_nullable
              as bool,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of VerificationState
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
abstract class _$$VerificationStateImplCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$$VerificationStateImplCopyWith(_$VerificationStateImpl value,
          $Res Function(_$VerificationStateImpl) then) =
      __$$VerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isEmailVerifying,
      String? successMessage,
      String? email,
      AppException? error,
      DateTime? expiredAt,
      int remainingSeconds,
      bool isVerified});

  @override
  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$VerificationStateImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerificationStateImpl>
    implements _$$VerificationStateImplCopyWith<$Res> {
  __$$VerificationStateImplCopyWithImpl(_$VerificationStateImpl _value,
      $Res Function(_$VerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEmailVerifying = null,
    Object? successMessage = freezed,
    Object? email = freezed,
    Object? error = freezed,
    Object? expiredAt = freezed,
    Object? remainingSeconds = null,
    Object? isVerified = null,
  }) {
    return _then(_$VerificationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailVerifying: null == isEmailVerifying
          ? _value.isEmailVerifying
          : isEmailVerifying // ignore: cast_nullable_to_non_nullable
              as bool,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerificationStateImpl extends _VerificationState {
  const _$VerificationStateImpl(
      {this.isLoading = false,
      this.isEmailVerifying = false,
      this.successMessage,
      this.email = null,
      this.error,
      this.expiredAt,
      this.remainingSeconds = 0,
      this.isVerified = false})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isEmailVerifying;
  @override
  final String? successMessage;
  @override
  @JsonKey()
  final String? email;
  @override
  final AppException? error;
  @override
  final DateTime? expiredAt;
  @override
  @JsonKey()
  final int remainingSeconds;
  @override
  @JsonKey()
  final bool isVerified;

  @override
  String toString() {
    return 'VerificationState(isLoading: $isLoading, isEmailVerifying: $isEmailVerifying, successMessage: $successMessage, email: $email, error: $error, expiredAt: $expiredAt, remainingSeconds: $remainingSeconds, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isEmailVerifying, isEmailVerifying) ||
                other.isEmailVerifying == isEmailVerifying) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isEmailVerifying,
      successMessage, email, error, expiredAt, remainingSeconds, isVerified);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationStateImplCopyWith<_$VerificationStateImpl> get copyWith =>
      __$$VerificationStateImplCopyWithImpl<_$VerificationStateImpl>(
          this, _$identity);
}

abstract class _VerificationState extends VerificationState {
  const factory _VerificationState(
      {final bool isLoading,
      final bool isEmailVerifying,
      final String? successMessage,
      final String? email,
      final AppException? error,
      final DateTime? expiredAt,
      final int remainingSeconds,
      final bool isVerified}) = _$VerificationStateImpl;
  const _VerificationState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isEmailVerifying;
  @override
  String? get successMessage;
  @override
  String? get email;
  @override
  AppException? get error;
  @override
  DateTime? get expiredAt;
  @override
  int get remainingSeconds;
  @override
  bool get isVerified;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationStateImplCopyWith<_$VerificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

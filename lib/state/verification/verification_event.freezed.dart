// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendAuthEmail,
    required TResult Function() removeSuccessMessage,
    required TResult Function(int remainingSeconds) updateRemainingTime,
    required TResult Function(String userId, String code) verifyAuthCode,
    required TResult Function() expired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(int remainingSeconds)? updateRemainingTime,
    TResult? Function(String userId, String code)? verifyAuthCode,
    TResult? Function()? expired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    TResult Function(int remainingSeconds)? updateRemainingTime,
    TResult Function(String userId, String code)? verifyAuthCode,
    TResult Function()? expired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(_UpdateRemainingTime value) updateRemainingTime,
    required TResult Function(_VerifyAuthCode value) verifyAuthCode,
    required TResult Function(_Expired value) expired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult? Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult? Function(_Expired value)? expired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult Function(_Expired value)? expired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEventCopyWith<$Res> {
  factory $VerificationEventCopyWith(
          VerificationEvent value, $Res Function(VerificationEvent) then) =
      _$VerificationEventCopyWithImpl<$Res, VerificationEvent>;
}

/// @nodoc
class _$VerificationEventCopyWithImpl<$Res, $Val extends VerificationEvent>
    implements $VerificationEventCopyWith<$Res> {
  _$VerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendAuthEmailImplCopyWith<$Res> {
  factory _$$SendAuthEmailImplCopyWith(
          _$SendAuthEmailImpl value, $Res Function(_$SendAuthEmailImpl) then) =
      __$$SendAuthEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendAuthEmailImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$SendAuthEmailImpl>
    implements _$$SendAuthEmailImplCopyWith<$Res> {
  __$$SendAuthEmailImplCopyWithImpl(
      _$SendAuthEmailImpl _value, $Res Function(_$SendAuthEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendAuthEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendAuthEmailImpl implements _SendAuthEmail {
  const _$SendAuthEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'VerificationEvent.sendAuthEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAuthEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAuthEmailImplCopyWith<_$SendAuthEmailImpl> get copyWith =>
      __$$SendAuthEmailImplCopyWithImpl<_$SendAuthEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendAuthEmail,
    required TResult Function() removeSuccessMessage,
    required TResult Function(int remainingSeconds) updateRemainingTime,
    required TResult Function(String userId, String code) verifyAuthCode,
    required TResult Function() expired,
  }) {
    return sendAuthEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(int remainingSeconds)? updateRemainingTime,
    TResult? Function(String userId, String code)? verifyAuthCode,
    TResult? Function()? expired,
  }) {
    return sendAuthEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    TResult Function(int remainingSeconds)? updateRemainingTime,
    TResult Function(String userId, String code)? verifyAuthCode,
    TResult Function()? expired,
    required TResult orElse(),
  }) {
    if (sendAuthEmail != null) {
      return sendAuthEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(_UpdateRemainingTime value) updateRemainingTime,
    required TResult Function(_VerifyAuthCode value) verifyAuthCode,
    required TResult Function(_Expired value) expired,
  }) {
    return sendAuthEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult? Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult? Function(_Expired value)? expired,
  }) {
    return sendAuthEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult Function(_Expired value)? expired,
    required TResult orElse(),
  }) {
    if (sendAuthEmail != null) {
      return sendAuthEmail(this);
    }
    return orElse();
  }
}

abstract class _SendAuthEmail implements VerificationEvent {
  const factory _SendAuthEmail(final String email) = _$SendAuthEmailImpl;

  String get email;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendAuthEmailImplCopyWith<_$SendAuthEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSuccessMessageImplCopyWith<$Res> {
  factory _$$RemoveSuccessMessageImplCopyWith(_$RemoveSuccessMessageImpl value,
          $Res Function(_$RemoveSuccessMessageImpl) then) =
      __$$RemoveSuccessMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveSuccessMessageImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$RemoveSuccessMessageImpl>
    implements _$$RemoveSuccessMessageImplCopyWith<$Res> {
  __$$RemoveSuccessMessageImplCopyWithImpl(_$RemoveSuccessMessageImpl _value,
      $Res Function(_$RemoveSuccessMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveSuccessMessageImpl implements _RemoveSuccessMessage {
  const _$RemoveSuccessMessageImpl();

  @override
  String toString() {
    return 'VerificationEvent.removeSuccessMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSuccessMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendAuthEmail,
    required TResult Function() removeSuccessMessage,
    required TResult Function(int remainingSeconds) updateRemainingTime,
    required TResult Function(String userId, String code) verifyAuthCode,
    required TResult Function() expired,
  }) {
    return removeSuccessMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(int remainingSeconds)? updateRemainingTime,
    TResult? Function(String userId, String code)? verifyAuthCode,
    TResult? Function()? expired,
  }) {
    return removeSuccessMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    TResult Function(int remainingSeconds)? updateRemainingTime,
    TResult Function(String userId, String code)? verifyAuthCode,
    TResult Function()? expired,
    required TResult orElse(),
  }) {
    if (removeSuccessMessage != null) {
      return removeSuccessMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(_UpdateRemainingTime value) updateRemainingTime,
    required TResult Function(_VerifyAuthCode value) verifyAuthCode,
    required TResult Function(_Expired value) expired,
  }) {
    return removeSuccessMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult? Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult? Function(_Expired value)? expired,
  }) {
    return removeSuccessMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult Function(_Expired value)? expired,
    required TResult orElse(),
  }) {
    if (removeSuccessMessage != null) {
      return removeSuccessMessage(this);
    }
    return orElse();
  }
}

abstract class _RemoveSuccessMessage implements VerificationEvent {
  const factory _RemoveSuccessMessage() = _$RemoveSuccessMessageImpl;
}

/// @nodoc
abstract class _$$UpdateRemainingTimeImplCopyWith<$Res> {
  factory _$$UpdateRemainingTimeImplCopyWith(_$UpdateRemainingTimeImpl value,
          $Res Function(_$UpdateRemainingTimeImpl) then) =
      __$$UpdateRemainingTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remainingSeconds});
}

/// @nodoc
class __$$UpdateRemainingTimeImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$UpdateRemainingTimeImpl>
    implements _$$UpdateRemainingTimeImplCopyWith<$Res> {
  __$$UpdateRemainingTimeImplCopyWithImpl(_$UpdateRemainingTimeImpl _value,
      $Res Function(_$UpdateRemainingTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingSeconds = null,
  }) {
    return _then(_$UpdateRemainingTimeImpl(
      null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateRemainingTimeImpl implements _UpdateRemainingTime {
  const _$UpdateRemainingTimeImpl(this.remainingSeconds);

  @override
  final int remainingSeconds;

  @override
  String toString() {
    return 'VerificationEvent.updateRemainingTime(remainingSeconds: $remainingSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRemainingTimeImpl &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingSeconds);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRemainingTimeImplCopyWith<_$UpdateRemainingTimeImpl> get copyWith =>
      __$$UpdateRemainingTimeImplCopyWithImpl<_$UpdateRemainingTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendAuthEmail,
    required TResult Function() removeSuccessMessage,
    required TResult Function(int remainingSeconds) updateRemainingTime,
    required TResult Function(String userId, String code) verifyAuthCode,
    required TResult Function() expired,
  }) {
    return updateRemainingTime(remainingSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(int remainingSeconds)? updateRemainingTime,
    TResult? Function(String userId, String code)? verifyAuthCode,
    TResult? Function()? expired,
  }) {
    return updateRemainingTime?.call(remainingSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    TResult Function(int remainingSeconds)? updateRemainingTime,
    TResult Function(String userId, String code)? verifyAuthCode,
    TResult Function()? expired,
    required TResult orElse(),
  }) {
    if (updateRemainingTime != null) {
      return updateRemainingTime(remainingSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(_UpdateRemainingTime value) updateRemainingTime,
    required TResult Function(_VerifyAuthCode value) verifyAuthCode,
    required TResult Function(_Expired value) expired,
  }) {
    return updateRemainingTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult? Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult? Function(_Expired value)? expired,
  }) {
    return updateRemainingTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult Function(_Expired value)? expired,
    required TResult orElse(),
  }) {
    if (updateRemainingTime != null) {
      return updateRemainingTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateRemainingTime implements VerificationEvent {
  const factory _UpdateRemainingTime(final int remainingSeconds) =
      _$UpdateRemainingTimeImpl;

  int get remainingSeconds;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRemainingTimeImplCopyWith<_$UpdateRemainingTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyAuthCodeImplCopyWith<$Res> {
  factory _$$VerifyAuthCodeImplCopyWith(_$VerifyAuthCodeImpl value,
          $Res Function(_$VerifyAuthCodeImpl) then) =
      __$$VerifyAuthCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String code});
}

/// @nodoc
class __$$VerifyAuthCodeImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$VerifyAuthCodeImpl>
    implements _$$VerifyAuthCodeImplCopyWith<$Res> {
  __$$VerifyAuthCodeImplCopyWithImpl(
      _$VerifyAuthCodeImpl _value, $Res Function(_$VerifyAuthCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? code = null,
  }) {
    return _then(_$VerifyAuthCodeImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyAuthCodeImpl implements _VerifyAuthCode {
  const _$VerifyAuthCodeImpl(this.userId, this.code);

  @override
  final String userId;
  @override
  final String code;

  @override
  String toString() {
    return 'VerificationEvent.verifyAuthCode(userId: $userId, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAuthCodeImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, code);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAuthCodeImplCopyWith<_$VerifyAuthCodeImpl> get copyWith =>
      __$$VerifyAuthCodeImplCopyWithImpl<_$VerifyAuthCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendAuthEmail,
    required TResult Function() removeSuccessMessage,
    required TResult Function(int remainingSeconds) updateRemainingTime,
    required TResult Function(String userId, String code) verifyAuthCode,
    required TResult Function() expired,
  }) {
    return verifyAuthCode(userId, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(int remainingSeconds)? updateRemainingTime,
    TResult? Function(String userId, String code)? verifyAuthCode,
    TResult? Function()? expired,
  }) {
    return verifyAuthCode?.call(userId, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    TResult Function(int remainingSeconds)? updateRemainingTime,
    TResult Function(String userId, String code)? verifyAuthCode,
    TResult Function()? expired,
    required TResult orElse(),
  }) {
    if (verifyAuthCode != null) {
      return verifyAuthCode(userId, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(_UpdateRemainingTime value) updateRemainingTime,
    required TResult Function(_VerifyAuthCode value) verifyAuthCode,
    required TResult Function(_Expired value) expired,
  }) {
    return verifyAuthCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult? Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult? Function(_Expired value)? expired,
  }) {
    return verifyAuthCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult Function(_Expired value)? expired,
    required TResult orElse(),
  }) {
    if (verifyAuthCode != null) {
      return verifyAuthCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyAuthCode implements VerificationEvent {
  const factory _VerifyAuthCode(final String userId, final String code) =
      _$VerifyAuthCodeImpl;

  String get userId;
  String get code;

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyAuthCodeImplCopyWith<_$VerifyAuthCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpiredImplCopyWith<$Res> {
  factory _$$ExpiredImplCopyWith(
          _$ExpiredImpl value, $Res Function(_$ExpiredImpl) then) =
      __$$ExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpiredImplCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res, _$ExpiredImpl>
    implements _$$ExpiredImplCopyWith<$Res> {
  __$$ExpiredImplCopyWithImpl(
      _$ExpiredImpl _value, $Res Function(_$ExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExpiredImpl implements _Expired {
  const _$ExpiredImpl();

  @override
  String toString() {
    return 'VerificationEvent.expired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendAuthEmail,
    required TResult Function() removeSuccessMessage,
    required TResult Function(int remainingSeconds) updateRemainingTime,
    required TResult Function(String userId, String code) verifyAuthCode,
    required TResult Function() expired,
  }) {
    return expired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(int remainingSeconds)? updateRemainingTime,
    TResult? Function(String userId, String code)? verifyAuthCode,
    TResult? Function()? expired,
  }) {
    return expired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    TResult Function(int remainingSeconds)? updateRemainingTime,
    TResult Function(String userId, String code)? verifyAuthCode,
    TResult Function()? expired,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(_UpdateRemainingTime value) updateRemainingTime,
    required TResult Function(_VerifyAuthCode value) verifyAuthCode,
    required TResult Function(_Expired value) expired,
  }) {
    return expired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult? Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult? Function(_Expired value)? expired,
  }) {
    return expired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(_UpdateRemainingTime value)? updateRemainingTime,
    TResult Function(_VerifyAuthCode value)? verifyAuthCode,
    TResult Function(_Expired value)? expired,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired(this);
    }
    return orElse();
  }
}

abstract class _Expired implements VerificationEvent {
  const factory _Expired() = _$ExpiredImpl;
}

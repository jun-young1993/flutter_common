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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAuthEmail value) sendAuthEmail,
    required TResult Function(_RemoveSuccessMessage value) removeSuccessMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
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
  }) {
    return sendAuthEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
  }) {
    return sendAuthEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
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
  }) {
    return sendAuthEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
  }) {
    return sendAuthEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
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
  }) {
    return removeSuccessMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendAuthEmail,
    TResult? Function()? removeSuccessMessage,
  }) {
    return removeSuccessMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendAuthEmail,
    TResult Function()? removeSuccessMessage,
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
  }) {
    return removeSuccessMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAuthEmail value)? sendAuthEmail,
    TResult? Function(_RemoveSuccessMessage value)? removeSuccessMessage,
  }) {
    return removeSuccessMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAuthEmail value)? sendAuthEmail,
    TResult Function(_RemoveSuccessMessage value)? removeSuccessMessage,
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

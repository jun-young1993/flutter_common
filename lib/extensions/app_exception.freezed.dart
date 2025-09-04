// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppException {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$TimeoutImplCopyWith(
          _$TimeoutImpl value, $Res Function(_$TimeoutImpl) then) =
      __$$TimeoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$TimeoutImpl>
    implements _$$TimeoutImplCopyWith<$Res> {
  __$$TimeoutImplCopyWithImpl(
      _$TimeoutImpl _value, $Res Function(_$TimeoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TimeoutImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TimeoutImpl implements _Timeout {
  const _$TimeoutImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.timeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutImplCopyWith<_$TimeoutImpl> get copyWith =>
      __$$TimeoutImplCopyWithImpl<_$TimeoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements AppException {
  const factory _Timeout([final String? message]) = _$TimeoutImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeoutImplCopyWith<_$TimeoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkImpl implements _Network {
  const _$NetworkImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkImplCopyWith<_$NetworkImpl> get copyWith =>
      __$$NetworkImplCopyWithImpl<_$NetworkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements AppException {
  const factory _Network([final String? message]) = _$NetworkImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkImplCopyWith<_$NetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AppException {
  const factory _Unknown([final String? message]) = _$UnknownImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadRequestImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements _BadRequest {
  const _$BadRequestImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements AppException {
  const factory _BadRequest([final String? message]) = _$BadRequestImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnauthorizedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements AppException {
  const factory _Unauthorized([final String? message]) = _$UnauthorizedImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ForbiddenImplCopyWith(
          _$ForbiddenImpl value, $Res Function(_$ForbiddenImpl) then) =
      __$$ForbiddenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ForbiddenImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ForbiddenImpl>
    implements _$$ForbiddenImplCopyWith<$Res> {
  __$$ForbiddenImplCopyWithImpl(
      _$ForbiddenImpl _value, $Res Function(_$ForbiddenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ForbiddenImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForbiddenImpl implements _Forbidden {
  const _$ForbiddenImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.forbidden(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      __$$ForbiddenImplCopyWithImpl<_$ForbiddenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _Forbidden implements AppException {
  const factory _Forbidden([final String? message]) = _$ForbiddenImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForbiddenImplCopyWith<_$ForbiddenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NotFoundImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements AppException {
  const factory _NotFound([final String? message]) = _$NotFoundImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerImpl implements _Server {
  const _$ServerImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements AppException {
  const factory _Server([final String? message]) = _$ServerImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CancelledImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.cancelled(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelledImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelledImplCopyWith<_$CancelledImpl> get copyWith =>
      __$$CancelledImplCopyWithImpl<_$CancelledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return cancelled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return cancelled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements AppException {
  const factory _Cancelled([final String? message]) = _$CancelledImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelledImplCopyWith<_$CancelledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundMcpApiKeyImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$NotFoundMcpApiKeyImplCopyWith(_$NotFoundMcpApiKeyImpl value,
          $Res Function(_$NotFoundMcpApiKeyImpl) then) =
      __$$NotFoundMcpApiKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NotFoundMcpApiKeyImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NotFoundMcpApiKeyImpl>
    implements _$$NotFoundMcpApiKeyImplCopyWith<$Res> {
  __$$NotFoundMcpApiKeyImplCopyWithImpl(_$NotFoundMcpApiKeyImpl _value,
      $Res Function(_$NotFoundMcpApiKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NotFoundMcpApiKeyImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundMcpApiKeyImpl implements _NotFoundMcpApiKey {
  const _$NotFoundMcpApiKeyImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'AppException.notFoundMcpApiKey(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundMcpApiKeyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundMcpApiKeyImplCopyWith<_$NotFoundMcpApiKeyImpl> get copyWith =>
      __$$NotFoundMcpApiKeyImplCopyWithImpl<_$NotFoundMcpApiKeyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) network,
    required TResult Function(String? message) unknown,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unauthorized,
    required TResult Function(String? message) forbidden,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) server,
    required TResult Function(String? message) cancelled,
    required TResult Function(String? message) notFoundMcpApiKey,
  }) {
    return notFoundMcpApiKey(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? network,
    TResult? Function(String? message)? unknown,
    TResult? Function(String? message)? badRequest,
    TResult? Function(String? message)? unauthorized,
    TResult? Function(String? message)? forbidden,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? cancelled,
    TResult? Function(String? message)? notFoundMcpApiKey,
  }) {
    return notFoundMcpApiKey?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? network,
    TResult Function(String? message)? unknown,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unauthorized,
    TResult Function(String? message)? forbidden,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? server,
    TResult Function(String? message)? cancelled,
    TResult Function(String? message)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (notFoundMcpApiKey != null) {
      return notFoundMcpApiKey(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NotFoundMcpApiKey value) notFoundMcpApiKey,
  }) {
    return notFoundMcpApiKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
  }) {
    return notFoundMcpApiKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NotFoundMcpApiKey value)? notFoundMcpApiKey,
    required TResult orElse(),
  }) {
    if (notFoundMcpApiKey != null) {
      return notFoundMcpApiKey(this);
    }
    return orElse();
  }
}

abstract class _NotFoundMcpApiKey implements AppException {
  const factory _NotFoundMcpApiKey([final String? message]) =
      _$NotFoundMcpApiKeyImpl;

  @override
  String? get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundMcpApiKeyImplCopyWith<_$NotFoundMcpApiKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

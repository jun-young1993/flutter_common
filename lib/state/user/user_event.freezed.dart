// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(User user) deleteUserData,
    required TResult Function(String blockedUserId, String reason) userBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(User user)? deleteUserData,
    TResult? Function(String blockedUserId, String reason)? userBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(User user)? deleteUserData,
    TResult Function(String blockedUserId, String reason)? userBlock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_DeleteUserData value) deleteUserData,
    required TResult Function(_UserBlock value) userBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_DeleteUserData value)? deleteUserData,
    TResult? Function(_UserBlock value)? userBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_DeleteUserData value)? deleteUserData,
    TResult Function(_UserBlock value)? userBlock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'UserEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(User user) deleteUserData,
    required TResult Function(String blockedUserId, String reason) userBlock,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(User user)? deleteUserData,
    TResult? Function(String blockedUserId, String reason)? userBlock,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(User user)? deleteUserData,
    TResult Function(String blockedUserId, String reason)? userBlock,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_DeleteUserData value) deleteUserData,
    required TResult Function(_UserBlock value) userBlock,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_DeleteUserData value)? deleteUserData,
    TResult? Function(_UserBlock value)? userBlock,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_DeleteUserData value)? deleteUserData,
    TResult Function(_UserBlock value)? userBlock,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements UserEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$DeleteUserDataImplCopyWith<$Res> {
  factory _$$DeleteUserDataImplCopyWith(_$DeleteUserDataImpl value,
          $Res Function(_$DeleteUserDataImpl) then) =
      __$$DeleteUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$DeleteUserDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUserDataImpl>
    implements _$$DeleteUserDataImplCopyWith<$Res> {
  __$$DeleteUserDataImplCopyWithImpl(
      _$DeleteUserDataImpl _value, $Res Function(_$DeleteUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$DeleteUserDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DeleteUserDataImpl implements _DeleteUserData {
  const _$DeleteUserDataImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.deleteUserData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserDataImplCopyWith<_$DeleteUserDataImpl> get copyWith =>
      __$$DeleteUserDataImplCopyWithImpl<_$DeleteUserDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(User user) deleteUserData,
    required TResult Function(String blockedUserId, String reason) userBlock,
  }) {
    return deleteUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(User user)? deleteUserData,
    TResult? Function(String blockedUserId, String reason)? userBlock,
  }) {
    return deleteUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(User user)? deleteUserData,
    TResult Function(String blockedUserId, String reason)? userBlock,
    required TResult orElse(),
  }) {
    if (deleteUserData != null) {
      return deleteUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_DeleteUserData value) deleteUserData,
    required TResult Function(_UserBlock value) userBlock,
  }) {
    return deleteUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_DeleteUserData value)? deleteUserData,
    TResult? Function(_UserBlock value)? userBlock,
  }) {
    return deleteUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_DeleteUserData value)? deleteUserData,
    TResult Function(_UserBlock value)? userBlock,
    required TResult orElse(),
  }) {
    if (deleteUserData != null) {
      return deleteUserData(this);
    }
    return orElse();
  }
}

abstract class _DeleteUserData implements UserEvent {
  const factory _DeleteUserData(final User user) = _$DeleteUserDataImpl;

  User get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserDataImplCopyWith<_$DeleteUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserBlockImplCopyWith<$Res> {
  factory _$$UserBlockImplCopyWith(
          _$UserBlockImpl value, $Res Function(_$UserBlockImpl) then) =
      __$$UserBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blockedUserId, String reason});
}

/// @nodoc
class __$$UserBlockImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserBlockImpl>
    implements _$$UserBlockImplCopyWith<$Res> {
  __$$UserBlockImplCopyWithImpl(
      _$UserBlockImpl _value, $Res Function(_$UserBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockedUserId = null,
    Object? reason = null,
  }) {
    return _then(_$UserBlockImpl(
      null == blockedUserId
          ? _value.blockedUserId
          : blockedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserBlockImpl implements _UserBlock {
  const _$UserBlockImpl(this.blockedUserId, this.reason);

  @override
  final String blockedUserId;
  @override
  final String reason;

  @override
  String toString() {
    return 'UserEvent.userBlock(blockedUserId: $blockedUserId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBlockImpl &&
            (identical(other.blockedUserId, blockedUserId) ||
                other.blockedUserId == blockedUserId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockedUserId, reason);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBlockImplCopyWith<_$UserBlockImpl> get copyWith =>
      __$$UserBlockImplCopyWithImpl<_$UserBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(User user) deleteUserData,
    required TResult Function(String blockedUserId, String reason) userBlock,
  }) {
    return userBlock(blockedUserId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(User user)? deleteUserData,
    TResult? Function(String blockedUserId, String reason)? userBlock,
  }) {
    return userBlock?.call(blockedUserId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(User user)? deleteUserData,
    TResult Function(String blockedUserId, String reason)? userBlock,
    required TResult orElse(),
  }) {
    if (userBlock != null) {
      return userBlock(blockedUserId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_DeleteUserData value) deleteUserData,
    required TResult Function(_UserBlock value) userBlock,
  }) {
    return userBlock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_DeleteUserData value)? deleteUserData,
    TResult? Function(_UserBlock value)? userBlock,
  }) {
    return userBlock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_DeleteUserData value)? deleteUserData,
    TResult Function(_UserBlock value)? userBlock,
    required TResult orElse(),
  }) {
    if (userBlock != null) {
      return userBlock(this);
    }
    return orElse();
  }
}

abstract class _UserBlock implements UserEvent {
  const factory _UserBlock(final String blockedUserId, final String reason) =
      _$UserBlockImpl;

  String get blockedUserId;
  String get reason;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBlockImplCopyWith<_$UserBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

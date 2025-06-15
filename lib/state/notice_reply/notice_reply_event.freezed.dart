// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_reply_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeReplyEvent {
  String get noticeId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noticeId, String content, String userId)
        add,
    required TResult Function(String noticeId) findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noticeId, String content, String userId)? add,
    TResult? Function(String noticeId)? findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noticeId, String content, String userId)? add,
    TResult Function(String noticeId)? findAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoticeReplyAddEvent value) add,
    required TResult Function(NoticeReplyFindAllEvent value) findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoticeReplyAddEvent value)? add,
    TResult? Function(NoticeReplyFindAllEvent value)? findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoticeReplyAddEvent value)? add,
    TResult Function(NoticeReplyFindAllEvent value)? findAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeReplyEventCopyWith<NoticeReplyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeReplyEventCopyWith<$Res> {
  factory $NoticeReplyEventCopyWith(
          NoticeReplyEvent value, $Res Function(NoticeReplyEvent) then) =
      _$NoticeReplyEventCopyWithImpl<$Res, NoticeReplyEvent>;
  @useResult
  $Res call({String noticeId});
}

/// @nodoc
class _$NoticeReplyEventCopyWithImpl<$Res, $Val extends NoticeReplyEvent>
    implements $NoticeReplyEventCopyWith<$Res> {
  _$NoticeReplyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
  }) {
    return _then(_value.copyWith(
      noticeId: null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeReplyAddEventImplCopyWith<$Res>
    implements $NoticeReplyEventCopyWith<$Res> {
  factory _$$NoticeReplyAddEventImplCopyWith(_$NoticeReplyAddEventImpl value,
          $Res Function(_$NoticeReplyAddEventImpl) then) =
      __$$NoticeReplyAddEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String noticeId, String content, String userId});
}

/// @nodoc
class __$$NoticeReplyAddEventImplCopyWithImpl<$Res>
    extends _$NoticeReplyEventCopyWithImpl<$Res, _$NoticeReplyAddEventImpl>
    implements _$$NoticeReplyAddEventImplCopyWith<$Res> {
  __$$NoticeReplyAddEventImplCopyWithImpl(_$NoticeReplyAddEventImpl _value,
      $Res Function(_$NoticeReplyAddEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
    Object? content = null,
    Object? userId = null,
  }) {
    return _then(_$NoticeReplyAddEventImpl(
      null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoticeReplyAddEventImpl implements NoticeReplyAddEvent {
  const _$NoticeReplyAddEventImpl(this.noticeId, this.content, this.userId);

  @override
  final String noticeId;
  @override
  final String content;
  @override
  final String userId;

  @override
  String toString() {
    return 'NoticeReplyEvent.add(noticeId: $noticeId, content: $content, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeReplyAddEventImpl &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noticeId, content, userId);

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeReplyAddEventImplCopyWith<_$NoticeReplyAddEventImpl> get copyWith =>
      __$$NoticeReplyAddEventImplCopyWithImpl<_$NoticeReplyAddEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noticeId, String content, String userId)
        add,
    required TResult Function(String noticeId) findAll,
  }) {
    return add(noticeId, content, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noticeId, String content, String userId)? add,
    TResult? Function(String noticeId)? findAll,
  }) {
    return add?.call(noticeId, content, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noticeId, String content, String userId)? add,
    TResult Function(String noticeId)? findAll,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(noticeId, content, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoticeReplyAddEvent value) add,
    required TResult Function(NoticeReplyFindAllEvent value) findAll,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoticeReplyAddEvent value)? add,
    TResult? Function(NoticeReplyFindAllEvent value)? findAll,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoticeReplyAddEvent value)? add,
    TResult Function(NoticeReplyFindAllEvent value)? findAll,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class NoticeReplyAddEvent implements NoticeReplyEvent {
  const factory NoticeReplyAddEvent(
          final String noticeId, final String content, final String userId) =
      _$NoticeReplyAddEventImpl;

  @override
  String get noticeId;
  String get content;
  String get userId;

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeReplyAddEventImplCopyWith<_$NoticeReplyAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoticeReplyFindAllEventImplCopyWith<$Res>
    implements $NoticeReplyEventCopyWith<$Res> {
  factory _$$NoticeReplyFindAllEventImplCopyWith(
          _$NoticeReplyFindAllEventImpl value,
          $Res Function(_$NoticeReplyFindAllEventImpl) then) =
      __$$NoticeReplyFindAllEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String noticeId});
}

/// @nodoc
class __$$NoticeReplyFindAllEventImplCopyWithImpl<$Res>
    extends _$NoticeReplyEventCopyWithImpl<$Res, _$NoticeReplyFindAllEventImpl>
    implements _$$NoticeReplyFindAllEventImplCopyWith<$Res> {
  __$$NoticeReplyFindAllEventImplCopyWithImpl(
      _$NoticeReplyFindAllEventImpl _value,
      $Res Function(_$NoticeReplyFindAllEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
  }) {
    return _then(_$NoticeReplyFindAllEventImpl(
      null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoticeReplyFindAllEventImpl implements NoticeReplyFindAllEvent {
  const _$NoticeReplyFindAllEventImpl(this.noticeId);

  @override
  final String noticeId;

  @override
  String toString() {
    return 'NoticeReplyEvent.findAll(noticeId: $noticeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeReplyFindAllEventImpl &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noticeId);

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeReplyFindAllEventImplCopyWith<_$NoticeReplyFindAllEventImpl>
      get copyWith => __$$NoticeReplyFindAllEventImplCopyWithImpl<
          _$NoticeReplyFindAllEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String noticeId, String content, String userId)
        add,
    required TResult Function(String noticeId) findAll,
  }) {
    return findAll(noticeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String noticeId, String content, String userId)? add,
    TResult? Function(String noticeId)? findAll,
  }) {
    return findAll?.call(noticeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String noticeId, String content, String userId)? add,
    TResult Function(String noticeId)? findAll,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(noticeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoticeReplyAddEvent value) add,
    required TResult Function(NoticeReplyFindAllEvent value) findAll,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoticeReplyAddEvent value)? add,
    TResult? Function(NoticeReplyFindAllEvent value)? findAll,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoticeReplyAddEvent value)? add,
    TResult Function(NoticeReplyFindAllEvent value)? findAll,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class NoticeReplyFindAllEvent implements NoticeReplyEvent {
  const factory NoticeReplyFindAllEvent(final String noticeId) =
      _$NoticeReplyFindAllEventImpl;

  @override
  String get noticeId;

  /// Create a copy of NoticeReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeReplyFindAllEventImplCopyWith<_$NoticeReplyFindAllEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

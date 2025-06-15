// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_reply_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeReplyState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  List<NoticeReply> get replies => throw _privateConstructorUsedError;

  /// Create a copy of NoticeReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeReplyStateCopyWith<NoticeReplyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeReplyStateCopyWith<$Res> {
  factory $NoticeReplyStateCopyWith(
          NoticeReplyState value, $Res Function(NoticeReplyState) then) =
      _$NoticeReplyStateCopyWithImpl<$Res, NoticeReplyState>;
  @useResult
  $Res call({bool isLoading, AppException? error, List<NoticeReply> replies});

  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$NoticeReplyStateCopyWithImpl<$Res, $Val extends NoticeReplyState>
    implements $NoticeReplyStateCopyWith<$Res> {
  _$NoticeReplyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? replies = null,
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
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<NoticeReply>,
    ) as $Val);
  }

  /// Create a copy of NoticeReplyState
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
abstract class _$$NoticeReplyStateImplCopyWith<$Res>
    implements $NoticeReplyStateCopyWith<$Res> {
  factory _$$NoticeReplyStateImplCopyWith(_$NoticeReplyStateImpl value,
          $Res Function(_$NoticeReplyStateImpl) then) =
      __$$NoticeReplyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, AppException? error, List<NoticeReply> replies});

  @override
  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$NoticeReplyStateImplCopyWithImpl<$Res>
    extends _$NoticeReplyStateCopyWithImpl<$Res, _$NoticeReplyStateImpl>
    implements _$$NoticeReplyStateImplCopyWith<$Res> {
  __$$NoticeReplyStateImplCopyWithImpl(_$NoticeReplyStateImpl _value,
      $Res Function(_$NoticeReplyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? replies = null,
  }) {
    return _then(_$NoticeReplyStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<NoticeReply>,
    ));
  }
}

/// @nodoc

class _$NoticeReplyStateImpl extends _NoticeReplyState {
  const _$NoticeReplyStateImpl(
      {this.isLoading = false,
      this.error = null,
      final List<NoticeReply> replies = const []})
      : _replies = replies,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  final List<NoticeReply> _replies;
  @override
  @JsonKey()
  List<NoticeReply> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'NoticeReplyState(isLoading: $isLoading, error: $error, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeReplyStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error,
      const DeepCollectionEquality().hash(_replies));

  /// Create a copy of NoticeReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeReplyStateImplCopyWith<_$NoticeReplyStateImpl> get copyWith =>
      __$$NoticeReplyStateImplCopyWithImpl<_$NoticeReplyStateImpl>(
          this, _$identity);
}

abstract class _NoticeReplyState extends NoticeReplyState {
  const factory _NoticeReplyState(
      {final bool isLoading,
      final AppException? error,
      final List<NoticeReply> replies}) = _$NoticeReplyStateImpl;
  const _NoticeReplyState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  List<NoticeReply> get replies;

  /// Create a copy of NoticeReplyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeReplyStateImplCopyWith<_$NoticeReplyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

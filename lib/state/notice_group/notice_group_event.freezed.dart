// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_group_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeGroupEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findNoticeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findNoticeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findNoticeGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindNoticeGroup value) findNoticeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FindNoticeGroup value)? findNoticeGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindNoticeGroup value)? findNoticeGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeGroupEventCopyWith<NoticeGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeGroupEventCopyWith<$Res> {
  factory $NoticeGroupEventCopyWith(
          NoticeGroupEvent value, $Res Function(NoticeGroupEvent) then) =
      _$NoticeGroupEventCopyWithImpl<$Res, NoticeGroupEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$NoticeGroupEventCopyWithImpl<$Res, $Val extends NoticeGroupEvent>
    implements $NoticeGroupEventCopyWith<$Res> {
  _$NoticeGroupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FindNoticeGroupImplCopyWith<$Res>
    implements $NoticeGroupEventCopyWith<$Res> {
  factory _$$FindNoticeGroupImplCopyWith(_$FindNoticeGroupImpl value,
          $Res Function(_$FindNoticeGroupImpl) then) =
      __$$FindNoticeGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FindNoticeGroupImplCopyWithImpl<$Res>
    extends _$NoticeGroupEventCopyWithImpl<$Res, _$FindNoticeGroupImpl>
    implements _$$FindNoticeGroupImplCopyWith<$Res> {
  __$$FindNoticeGroupImplCopyWithImpl(
      _$FindNoticeGroupImpl _value, $Res Function(_$FindNoticeGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$FindNoticeGroupImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindNoticeGroupImpl implements _FindNoticeGroup {
  const _$FindNoticeGroupImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeGroupEvent.findNoticeGroup(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindNoticeGroupImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindNoticeGroupImplCopyWith<_$FindNoticeGroupImpl> get copyWith =>
      __$$FindNoticeGroupImplCopyWithImpl<_$FindNoticeGroupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findNoticeGroup,
  }) {
    return findNoticeGroup(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findNoticeGroup,
  }) {
    return findNoticeGroup?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findNoticeGroup,
    required TResult orElse(),
  }) {
    if (findNoticeGroup != null) {
      return findNoticeGroup(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindNoticeGroup value) findNoticeGroup,
  }) {
    return findNoticeGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FindNoticeGroup value)? findNoticeGroup,
  }) {
    return findNoticeGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindNoticeGroup value)? findNoticeGroup,
    required TResult orElse(),
  }) {
    if (findNoticeGroup != null) {
      return findNoticeGroup(this);
    }
    return orElse();
  }
}

abstract class _FindNoticeGroup implements NoticeGroupEvent {
  const factory _FindNoticeGroup(final String name) = _$FindNoticeGroupImpl;

  @override
  String get name;

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindNoticeGroupImplCopyWith<_$FindNoticeGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

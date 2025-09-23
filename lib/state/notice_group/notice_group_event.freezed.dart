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
    required TResult Function(String name) createNoticeGroup,
    required TResult Function(String name) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findNoticeGroup,
    TResult? Function(String name)? createNoticeGroup,
    TResult? Function(String name)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findNoticeGroup,
    TResult Function(String name)? createNoticeGroup,
    TResult Function(String name)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindNoticeGroup value) findNoticeGroup,
    required TResult Function(_CreateNoticeGroup value) createNoticeGroup,
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult? Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult? Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult Function(_Initialize value)? initialize,
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
    required TResult Function(String name) createNoticeGroup,
    required TResult Function(String name) initialize,
  }) {
    return findNoticeGroup(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findNoticeGroup,
    TResult? Function(String name)? createNoticeGroup,
    TResult? Function(String name)? initialize,
  }) {
    return findNoticeGroup?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findNoticeGroup,
    TResult Function(String name)? createNoticeGroup,
    TResult Function(String name)? initialize,
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
    required TResult Function(_CreateNoticeGroup value) createNoticeGroup,
    required TResult Function(_Initialize value) initialize,
  }) {
    return findNoticeGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult? Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult? Function(_Initialize value)? initialize,
  }) {
    return findNoticeGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult Function(_Initialize value)? initialize,
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

/// @nodoc
abstract class _$$CreateNoticeGroupImplCopyWith<$Res>
    implements $NoticeGroupEventCopyWith<$Res> {
  factory _$$CreateNoticeGroupImplCopyWith(_$CreateNoticeGroupImpl value,
          $Res Function(_$CreateNoticeGroupImpl) then) =
      __$$CreateNoticeGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateNoticeGroupImplCopyWithImpl<$Res>
    extends _$NoticeGroupEventCopyWithImpl<$Res, _$CreateNoticeGroupImpl>
    implements _$$CreateNoticeGroupImplCopyWith<$Res> {
  __$$CreateNoticeGroupImplCopyWithImpl(_$CreateNoticeGroupImpl _value,
      $Res Function(_$CreateNoticeGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateNoticeGroupImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNoticeGroupImpl implements _CreateNoticeGroup {
  const _$CreateNoticeGroupImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeGroupEvent.createNoticeGroup(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNoticeGroupImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNoticeGroupImplCopyWith<_$CreateNoticeGroupImpl> get copyWith =>
      __$$CreateNoticeGroupImplCopyWithImpl<_$CreateNoticeGroupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findNoticeGroup,
    required TResult Function(String name) createNoticeGroup,
    required TResult Function(String name) initialize,
  }) {
    return createNoticeGroup(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findNoticeGroup,
    TResult? Function(String name)? createNoticeGroup,
    TResult? Function(String name)? initialize,
  }) {
    return createNoticeGroup?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findNoticeGroup,
    TResult Function(String name)? createNoticeGroup,
    TResult Function(String name)? initialize,
    required TResult orElse(),
  }) {
    if (createNoticeGroup != null) {
      return createNoticeGroup(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindNoticeGroup value) findNoticeGroup,
    required TResult Function(_CreateNoticeGroup value) createNoticeGroup,
    required TResult Function(_Initialize value) initialize,
  }) {
    return createNoticeGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult? Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult? Function(_Initialize value)? initialize,
  }) {
    return createNoticeGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (createNoticeGroup != null) {
      return createNoticeGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateNoticeGroup implements NoticeGroupEvent {
  const factory _CreateNoticeGroup(final String name) = _$CreateNoticeGroupImpl;

  @override
  String get name;

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNoticeGroupImplCopyWith<_$CreateNoticeGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res>
    implements $NoticeGroupEventCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$NoticeGroupEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$InitializeImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeGroupEvent.initialize(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findNoticeGroup,
    required TResult Function(String name) createNoticeGroup,
    required TResult Function(String name) initialize,
  }) {
    return initialize(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findNoticeGroup,
    TResult? Function(String name)? createNoticeGroup,
    TResult? Function(String name)? initialize,
  }) {
    return initialize?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findNoticeGroup,
    TResult Function(String name)? createNoticeGroup,
    TResult Function(String name)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FindNoticeGroup value) findNoticeGroup,
    required TResult Function(_CreateNoticeGroup value) createNoticeGroup,
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult? Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult? Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FindNoticeGroup value)? findNoticeGroup,
    TResult Function(_CreateNoticeGroup value)? createNoticeGroup,
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements NoticeGroupEvent {
  const factory _Initialize(final String name) = _$InitializeImpl;

  @override
  String get name;

  /// Create a copy of NoticeGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

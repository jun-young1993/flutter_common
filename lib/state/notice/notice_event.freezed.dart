// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeEventCopyWith<NoticeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeEventCopyWith<$Res> {
  factory $NoticeEventCopyWith(
          NoticeEvent value, $Res Function(NoticeEvent) then) =
      _$NoticeEventCopyWithImpl<$Res, NoticeEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$NoticeEventCopyWithImpl<$Res, $Val extends NoticeEvent>
    implements $NoticeEventCopyWith<$Res> {
  _$NoticeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeEvent
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
abstract class _$$FindAllImplCopyWith<$Res>
    implements $NoticeEventCopyWith<$Res> {
  factory _$$FindAllImplCopyWith(
          _$FindAllImpl value, $Res Function(_$FindAllImpl) then) =
      __$$FindAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FindAllImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$FindAllImpl>
    implements _$$FindAllImplCopyWith<$Res> {
  __$$FindAllImplCopyWithImpl(
      _$FindAllImpl _value, $Res Function(_$FindAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$FindAllImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindAllImpl implements FindAll {
  const _$FindAllImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeEvent.findAll(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindAllImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindAllImplCopyWith<_$FindAllImpl> get copyWith =>
      __$$FindAllImplCopyWithImpl<_$FindAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
  }) {
    return findAll(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
  }) {
    return findAll?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class FindAll implements NoticeEvent {
  const factory FindAll(final String name) = _$FindAllImpl;

  @override
  String get name;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindAllImplCopyWith<_$FindAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSkipImplCopyWith<$Res>
    implements $NoticeEventCopyWith<$Res> {
  factory _$$AddSkipImplCopyWith(
          _$AddSkipImpl value, $Res Function(_$AddSkipImpl) then) =
      __$$AddSkipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddSkipImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$AddSkipImpl>
    implements _$$AddSkipImplCopyWith<$Res> {
  __$$AddSkipImplCopyWithImpl(
      _$AddSkipImpl _value, $Res Function(_$AddSkipImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddSkipImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSkipImpl implements AddSkip {
  const _$AddSkipImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeEvent.addSkip(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSkipImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSkipImplCopyWith<_$AddSkipImpl> get copyWith =>
      __$$AddSkipImplCopyWithImpl<_$AddSkipImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
  }) {
    return addSkip(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
  }) {
    return addSkip?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    required TResult orElse(),
  }) {
    if (addSkip != null) {
      return addSkip(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
  }) {
    return addSkip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
  }) {
    return addSkip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    required TResult orElse(),
  }) {
    if (addSkip != null) {
      return addSkip(this);
    }
    return orElse();
  }
}

abstract class AddSkip implements NoticeEvent {
  const factory AddSkip(final String name) = _$AddSkipImpl;

  @override
  String get name;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSkipImplCopyWith<_$AddSkipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

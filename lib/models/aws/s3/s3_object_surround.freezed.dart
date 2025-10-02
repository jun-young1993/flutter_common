// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_surround.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectSurround _$S3ObjectSurroundFromJson(Map<String, dynamic> json) {
  return _S3ObjectSurround.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectSurround {
  List<S3Object>? get previous => throw _privateConstructorUsedError;
  S3Object get current => throw _privateConstructorUsedError;
  List<S3Object>? get next => throw _privateConstructorUsedError;

  /// Serializes this S3ObjectSurround to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectSurround
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectSurroundCopyWith<S3ObjectSurround> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectSurroundCopyWith<$Res> {
  factory $S3ObjectSurroundCopyWith(
          S3ObjectSurround value, $Res Function(S3ObjectSurround) then) =
      _$S3ObjectSurroundCopyWithImpl<$Res, S3ObjectSurround>;
  @useResult
  $Res call({List<S3Object>? previous, S3Object current, List<S3Object>? next});

  $S3ObjectCopyWith<$Res> get current;
}

/// @nodoc
class _$S3ObjectSurroundCopyWithImpl<$Res, $Val extends S3ObjectSurround>
    implements $S3ObjectSurroundCopyWith<$Res> {
  _$S3ObjectSurroundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectSurround
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previous = freezed,
    Object? current = null,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as List<S3Object>?,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as S3Object,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as List<S3Object>?,
    ) as $Val);
  }

  /// Create a copy of S3ObjectSurround
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get current {
    return $S3ObjectCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$S3ObjectSurroundImplCopyWith<$Res>
    implements $S3ObjectSurroundCopyWith<$Res> {
  factory _$$S3ObjectSurroundImplCopyWith(_$S3ObjectSurroundImpl value,
          $Res Function(_$S3ObjectSurroundImpl) then) =
      __$$S3ObjectSurroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<S3Object>? previous, S3Object current, List<S3Object>? next});

  @override
  $S3ObjectCopyWith<$Res> get current;
}

/// @nodoc
class __$$S3ObjectSurroundImplCopyWithImpl<$Res>
    extends _$S3ObjectSurroundCopyWithImpl<$Res, _$S3ObjectSurroundImpl>
    implements _$$S3ObjectSurroundImplCopyWith<$Res> {
  __$$S3ObjectSurroundImplCopyWithImpl(_$S3ObjectSurroundImpl _value,
      $Res Function(_$S3ObjectSurroundImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectSurround
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previous = freezed,
    Object? current = null,
    Object? next = freezed,
  }) {
    return _then(_$S3ObjectSurroundImpl(
      previous: freezed == previous
          ? _value._previous
          : previous // ignore: cast_nullable_to_non_nullable
              as List<S3Object>?,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as S3Object,
      next: freezed == next
          ? _value._next
          : next // ignore: cast_nullable_to_non_nullable
              as List<S3Object>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectSurroundImpl extends _S3ObjectSurround {
  const _$S3ObjectSurroundImpl(
      {final List<S3Object>? previous = const [],
      required this.current,
      final List<S3Object>? next = const []})
      : _previous = previous,
        _next = next,
        super._();

  factory _$S3ObjectSurroundImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectSurroundImplFromJson(json);

  final List<S3Object>? _previous;
  @override
  @JsonKey()
  List<S3Object>? get previous {
    final value = _previous;
    if (value == null) return null;
    if (_previous is EqualUnmodifiableListView) return _previous;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final S3Object current;
  final List<S3Object>? _next;
  @override
  @JsonKey()
  List<S3Object>? get next {
    final value = _next;
    if (value == null) return null;
    if (_next is EqualUnmodifiableListView) return _next;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'S3ObjectSurround(previous: $previous, current: $current, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectSurroundImpl &&
            const DeepCollectionEquality().equals(other._previous, _previous) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._next, _next));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_previous),
      current,
      const DeepCollectionEquality().hash(_next));

  /// Create a copy of S3ObjectSurround
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectSurroundImplCopyWith<_$S3ObjectSurroundImpl> get copyWith =>
      __$$S3ObjectSurroundImplCopyWithImpl<_$S3ObjectSurroundImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectSurroundImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectSurround extends S3ObjectSurround {
  const factory _S3ObjectSurround(
      {final List<S3Object>? previous,
      required final S3Object current,
      final List<S3Object>? next}) = _$S3ObjectSurroundImpl;
  const _S3ObjectSurround._() : super._();

  factory _S3ObjectSurround.fromJson(Map<String, dynamic> json) =
      _$S3ObjectSurroundImpl.fromJson;

  @override
  List<S3Object>? get previous;
  @override
  S3Object get current;
  @override
  List<S3Object>? get next;

  /// Create a copy of S3ObjectSurround
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectSurroundImplCopyWith<_$S3ObjectSurroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectTag _$S3ObjectTagFromJson(Map<String, dynamic> json) {
  return _S3ObjectTag.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectTag {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this S3ObjectTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectTagCopyWith<S3ObjectTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectTagCopyWith<$Res> {
  factory $S3ObjectTagCopyWith(
          S3ObjectTag value, $Res Function(S3ObjectTag) then) =
      _$S3ObjectTagCopyWithImpl<$Res, S3ObjectTag>;
  @useResult
  $Res call({String id, String name, String color, String type});
}

/// @nodoc
class _$S3ObjectTagCopyWithImpl<$Res, $Val extends S3ObjectTag>
    implements $S3ObjectTagCopyWith<$Res> {
  _$S3ObjectTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectTagImplCopyWith<$Res>
    implements $S3ObjectTagCopyWith<$Res> {
  factory _$$S3ObjectTagImplCopyWith(
          _$S3ObjectTagImpl value, $Res Function(_$S3ObjectTagImpl) then) =
      __$$S3ObjectTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String color, String type});
}

/// @nodoc
class __$$S3ObjectTagImplCopyWithImpl<$Res>
    extends _$S3ObjectTagCopyWithImpl<$Res, _$S3ObjectTagImpl>
    implements _$$S3ObjectTagImplCopyWith<$Res> {
  __$$S3ObjectTagImplCopyWithImpl(
      _$S3ObjectTagImpl _value, $Res Function(_$S3ObjectTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? type = null,
  }) {
    return _then(_$S3ObjectTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectTagImpl extends _S3ObjectTag {
  const _$S3ObjectTagImpl(
      {required this.id,
      required this.name,
      this.color = '#000000',
      required this.type})
      : super._();

  factory _$S3ObjectTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectTagImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String color;
  @override
  final String type;

  @override
  String toString() {
    return 'S3ObjectTag(id: $id, name: $name, color: $color, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, type);

  /// Create a copy of S3ObjectTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectTagImplCopyWith<_$S3ObjectTagImpl> get copyWith =>
      __$$S3ObjectTagImplCopyWithImpl<_$S3ObjectTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectTagImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectTag extends S3ObjectTag {
  const factory _S3ObjectTag(
      {required final String id,
      required final String name,
      final String color,
      required final String type}) = _$S3ObjectTagImpl;
  const _S3ObjectTag._() : super._();

  factory _S3ObjectTag.fromJson(Map<String, dynamic> json) =
      _$S3ObjectTagImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;
  @override
  String get type;

  /// Create a copy of S3ObjectTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectTagImplCopyWith<_$S3ObjectTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

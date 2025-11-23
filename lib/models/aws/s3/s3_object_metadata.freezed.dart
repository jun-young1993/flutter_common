// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectMetadata _$S3ObjectMetadataFromJson(Map<String, dynamic> json) {
  return _S3ObjectMetadata.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectMetadata {
  String get id => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get captionKo => throw _privateConstructorUsedError;

  /// Serializes this S3ObjectMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectMetadataCopyWith<S3ObjectMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectMetadataCopyWith<$Res> {
  factory $S3ObjectMetadataCopyWith(
          S3ObjectMetadata value, $Res Function(S3ObjectMetadata) then) =
      _$S3ObjectMetadataCopyWithImpl<$Res, S3ObjectMetadata>;
  @useResult
  $Res call({String id, String? caption, String? captionKo});
}

/// @nodoc
class _$S3ObjectMetadataCopyWithImpl<$Res, $Val extends S3ObjectMetadata>
    implements $S3ObjectMetadataCopyWith<$Res> {
  _$S3ObjectMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caption = freezed,
    Object? captionKo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      captionKo: freezed == captionKo
          ? _value.captionKo
          : captionKo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectMetadataImplCopyWith<$Res>
    implements $S3ObjectMetadataCopyWith<$Res> {
  factory _$$S3ObjectMetadataImplCopyWith(_$S3ObjectMetadataImpl value,
          $Res Function(_$S3ObjectMetadataImpl) then) =
      __$$S3ObjectMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? caption, String? captionKo});
}

/// @nodoc
class __$$S3ObjectMetadataImplCopyWithImpl<$Res>
    extends _$S3ObjectMetadataCopyWithImpl<$Res, _$S3ObjectMetadataImpl>
    implements _$$S3ObjectMetadataImplCopyWith<$Res> {
  __$$S3ObjectMetadataImplCopyWithImpl(_$S3ObjectMetadataImpl _value,
      $Res Function(_$S3ObjectMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caption = freezed,
    Object? captionKo = freezed,
  }) {
    return _then(_$S3ObjectMetadataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      captionKo: freezed == captionKo
          ? _value.captionKo
          : captionKo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectMetadataImpl extends _S3ObjectMetadata {
  const _$S3ObjectMetadataImpl(
      {required this.id, this.caption = null, this.captionKo = null})
      : super._();

  factory _$S3ObjectMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectMetadataImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String? caption;
  @override
  @JsonKey()
  final String? captionKo;

  @override
  String toString() {
    return 'S3ObjectMetadata(id: $id, caption: $caption, captionKo: $captionKo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectMetadataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.captionKo, captionKo) ||
                other.captionKo == captionKo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, caption, captionKo);

  /// Create a copy of S3ObjectMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectMetadataImplCopyWith<_$S3ObjectMetadataImpl> get copyWith =>
      __$$S3ObjectMetadataImplCopyWithImpl<_$S3ObjectMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectMetadataImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectMetadata extends S3ObjectMetadata {
  const factory _S3ObjectMetadata(
      {required final String id,
      final String? caption,
      final String? captionKo}) = _$S3ObjectMetadataImpl;
  const _S3ObjectMetadata._() : super._();

  factory _S3ObjectMetadata.fromJson(Map<String, dynamic> json) =
      _$S3ObjectMetadataImpl.fromJson;

  @override
  String get id;
  @override
  String? get caption;
  @override
  String? get captionKo;

  /// Create a copy of S3ObjectMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectMetadataImplCopyWith<_$S3ObjectMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

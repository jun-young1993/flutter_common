// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectLike _$S3ObjectLikeFromJson(Map<String, dynamic> json) {
  return _S3ObjectLike.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectLike {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get s3ObjectId => throw _privateConstructorUsedError;

  /// Serializes this S3ObjectLike to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectLikeCopyWith<S3ObjectLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectLikeCopyWith<$Res> {
  factory $S3ObjectLikeCopyWith(
          S3ObjectLike value, $Res Function(S3ObjectLike) then) =
      _$S3ObjectLikeCopyWithImpl<$Res, S3ObjectLike>;
  @useResult
  $Res call({String id, String userId, String s3ObjectId});
}

/// @nodoc
class _$S3ObjectLikeCopyWithImpl<$Res, $Val extends S3ObjectLike>
    implements $S3ObjectLikeCopyWith<$Res> {
  _$S3ObjectLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? s3ObjectId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      s3ObjectId: null == s3ObjectId
          ? _value.s3ObjectId
          : s3ObjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectLikeImplCopyWith<$Res>
    implements $S3ObjectLikeCopyWith<$Res> {
  factory _$$S3ObjectLikeImplCopyWith(
          _$S3ObjectLikeImpl value, $Res Function(_$S3ObjectLikeImpl) then) =
      __$$S3ObjectLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId, String s3ObjectId});
}

/// @nodoc
class __$$S3ObjectLikeImplCopyWithImpl<$Res>
    extends _$S3ObjectLikeCopyWithImpl<$Res, _$S3ObjectLikeImpl>
    implements _$$S3ObjectLikeImplCopyWith<$Res> {
  __$$S3ObjectLikeImplCopyWithImpl(
      _$S3ObjectLikeImpl _value, $Res Function(_$S3ObjectLikeImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? s3ObjectId = null,
  }) {
    return _then(_$S3ObjectLikeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      s3ObjectId: null == s3ObjectId
          ? _value.s3ObjectId
          : s3ObjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectLikeImpl extends _S3ObjectLike {
  const _$S3ObjectLikeImpl(
      {required this.id, required this.userId, required this.s3ObjectId})
      : super._();

  factory _$S3ObjectLikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectLikeImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String s3ObjectId;

  @override
  String toString() {
    return 'S3ObjectLike(id: $id, userId: $userId, s3ObjectId: $s3ObjectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectLikeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.s3ObjectId, s3ObjectId) ||
                other.s3ObjectId == s3ObjectId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, s3ObjectId);

  /// Create a copy of S3ObjectLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectLikeImplCopyWith<_$S3ObjectLikeImpl> get copyWith =>
      __$$S3ObjectLikeImplCopyWithImpl<_$S3ObjectLikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectLikeImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectLike extends S3ObjectLike {
  const factory _S3ObjectLike(
      {required final String id,
      required final String userId,
      required final String s3ObjectId}) = _$S3ObjectLikeImpl;
  const _S3ObjectLike._() : super._();

  factory _S3ObjectLike.fromJson(Map<String, dynamic> json) =
      _$S3ObjectLikeImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get s3ObjectId;

  /// Create a copy of S3ObjectLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectLikeImplCopyWith<_$S3ObjectLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

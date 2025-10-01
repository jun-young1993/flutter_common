// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectReply _$S3ObjectReplyFromJson(Map<String, dynamic> json) {
  return _S3ObjectReply.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectReply {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get s3ObjectId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this S3ObjectReply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectReplyCopyWith<S3ObjectReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectReplyCopyWith<$Res> {
  factory $S3ObjectReplyCopyWith(
          S3ObjectReply value, $Res Function(S3ObjectReply) then) =
      _$S3ObjectReplyCopyWithImpl<$Res, S3ObjectReply>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String s3ObjectId,
      String content,
      DateTime createdAt});
}

/// @nodoc
class _$S3ObjectReplyCopyWithImpl<$Res, $Val extends S3ObjectReply>
    implements $S3ObjectReplyCopyWith<$Res> {
  _$S3ObjectReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? s3ObjectId = null,
    Object? content = null,
    Object? createdAt = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectReplyImplCopyWith<$Res>
    implements $S3ObjectReplyCopyWith<$Res> {
  factory _$$S3ObjectReplyImplCopyWith(
          _$S3ObjectReplyImpl value, $Res Function(_$S3ObjectReplyImpl) then) =
      __$$S3ObjectReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String s3ObjectId,
      String content,
      DateTime createdAt});
}

/// @nodoc
class __$$S3ObjectReplyImplCopyWithImpl<$Res>
    extends _$S3ObjectReplyCopyWithImpl<$Res, _$S3ObjectReplyImpl>
    implements _$$S3ObjectReplyImplCopyWith<$Res> {
  __$$S3ObjectReplyImplCopyWithImpl(
      _$S3ObjectReplyImpl _value, $Res Function(_$S3ObjectReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? s3ObjectId = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$S3ObjectReplyImpl(
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectReplyImpl extends _S3ObjectReply {
  const _$S3ObjectReplyImpl(
      {required this.id,
      required this.userId,
      required this.s3ObjectId,
      required this.content,
      required this.createdAt})
      : super._();

  factory _$S3ObjectReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectReplyImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String s3ObjectId;
  @override
  final String content;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'S3ObjectReply(id: $id, userId: $userId, s3ObjectId: $s3ObjectId, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectReplyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.s3ObjectId, s3ObjectId) ||
                other.s3ObjectId == s3ObjectId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, s3ObjectId, content, createdAt);

  /// Create a copy of S3ObjectReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectReplyImplCopyWith<_$S3ObjectReplyImpl> get copyWith =>
      __$$S3ObjectReplyImplCopyWithImpl<_$S3ObjectReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectReplyImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectReply extends S3ObjectReply {
  const factory _S3ObjectReply(
      {required final String id,
      required final String userId,
      required final String s3ObjectId,
      required final String content,
      required final DateTime createdAt}) = _$S3ObjectReplyImpl;
  const _S3ObjectReply._() : super._();

  factory _S3ObjectReply.fromJson(Map<String, dynamic> json) =
      _$S3ObjectReplyImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get s3ObjectId;
  @override
  String get content;
  @override
  DateTime get createdAt;

  /// Create a copy of S3ObjectReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectReplyImplCopyWith<_$S3ObjectReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

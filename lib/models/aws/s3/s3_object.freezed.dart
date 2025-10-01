// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3Object _$S3ObjectFromJson(Map<String, dynamic> json) {
  return _S3Object.fromJson(json);
}

/// @nodoc
mixin _$S3Object {
  String get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get mimetype => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<S3ObjectTag>? get tags => throw _privateConstructorUsedError;
  List<S3ObjectLike>? get likes => throw _privateConstructorUsedError;
  List<S3ObjectReply>? get replies => throw _privateConstructorUsedError;

  /// Serializes this S3Object to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectCopyWith<S3Object> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectCopyWith<$Res> {
  factory $S3ObjectCopyWith(S3Object value, $Res Function(S3Object) then) =
      _$S3ObjectCopyWithImpl<$Res, S3Object>;
  @useResult
  $Res call(
      {String id,
      String? key,
      String? url,
      String? originalName,
      int? size,
      String? mimetype,
      bool active,
      DateTime? createdAt,
      String? userId,
      List<S3ObjectTag>? tags,
      List<S3ObjectLike>? likes,
      List<S3ObjectReply>? replies});
}

/// @nodoc
class _$S3ObjectCopyWithImpl<$Res, $Val extends S3Object>
    implements $S3ObjectCopyWith<$Res> {
  _$S3ObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = freezed,
    Object? url = freezed,
    Object? originalName = freezed,
    Object? size = freezed,
    Object? mimetype = freezed,
    Object? active = null,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? tags = freezed,
    Object? likes = freezed,
    Object? replies = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectTag>?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectLike>?,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectReply>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectImplCopyWith<$Res>
    implements $S3ObjectCopyWith<$Res> {
  factory _$$S3ObjectImplCopyWith(
          _$S3ObjectImpl value, $Res Function(_$S3ObjectImpl) then) =
      __$$S3ObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? key,
      String? url,
      String? originalName,
      int? size,
      String? mimetype,
      bool active,
      DateTime? createdAt,
      String? userId,
      List<S3ObjectTag>? tags,
      List<S3ObjectLike>? likes,
      List<S3ObjectReply>? replies});
}

/// @nodoc
class __$$S3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectCopyWithImpl<$Res, _$S3ObjectImpl>
    implements _$$S3ObjectImplCopyWith<$Res> {
  __$$S3ObjectImplCopyWithImpl(
      _$S3ObjectImpl _value, $Res Function(_$S3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = freezed,
    Object? url = freezed,
    Object? originalName = freezed,
    Object? size = freezed,
    Object? mimetype = freezed,
    Object? active = null,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? tags = freezed,
    Object? likes = freezed,
    Object? replies = freezed,
  }) {
    return _then(_$S3ObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      mimetype: freezed == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectTag>?,
      likes: freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectLike>?,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectReply>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectImpl extends _S3Object {
  const _$S3ObjectImpl(
      {required this.id,
      this.key = null,
      this.url = null,
      this.originalName = null,
      this.size = null,
      this.mimetype = null,
      this.active = false,
      this.createdAt = null,
      this.userId = null,
      final List<S3ObjectTag>? tags = const [],
      final List<S3ObjectLike>? likes = const [],
      final List<S3ObjectReply>? replies = const []})
      : _tags = tags,
        _likes = likes,
        _replies = replies,
        super._();

  factory _$S3ObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String? key;
  @override
  @JsonKey()
  final String? url;
  @override
  @JsonKey()
  final String? originalName;
  @override
  @JsonKey()
  final int? size;
  @override
  @JsonKey()
  final String? mimetype;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String? userId;
  final List<S3ObjectTag>? _tags;
  @override
  @JsonKey()
  List<S3ObjectTag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<S3ObjectLike>? _likes;
  @override
  @JsonKey()
  List<S3ObjectLike>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<S3ObjectReply>? _replies;
  @override
  @JsonKey()
  List<S3ObjectReply>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'S3Object(id: $id, key: $key, url: $url, originalName: $originalName, size: $size, mimetype: $mimetype, active: $active, createdAt: $createdAt, userId: $userId, tags: $tags, likes: $likes, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.mimetype, mimetype) ||
                other.mimetype == mimetype) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      key,
      url,
      originalName,
      size,
      mimetype,
      active,
      createdAt,
      userId,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_replies));

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectImplCopyWith<_$S3ObjectImpl> get copyWith =>
      __$$S3ObjectImplCopyWithImpl<_$S3ObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectImplToJson(
      this,
    );
  }
}

abstract class _S3Object extends S3Object {
  const factory _S3Object(
      {required final String id,
      final String? key,
      final String? url,
      final String? originalName,
      final int? size,
      final String? mimetype,
      final bool active,
      final DateTime? createdAt,
      final String? userId,
      final List<S3ObjectTag>? tags,
      final List<S3ObjectLike>? likes,
      final List<S3ObjectReply>? replies}) = _$S3ObjectImpl;
  const _S3Object._() : super._();

  factory _S3Object.fromJson(Map<String, dynamic> json) =
      _$S3ObjectImpl.fromJson;

  @override
  String get id;
  @override
  String? get key;
  @override
  String? get url;
  @override
  String? get originalName;
  @override
  int? get size;
  @override
  String? get mimetype;
  @override
  bool get active;
  @override
  DateTime? get createdAt;
  @override
  String? get userId;
  @override
  List<S3ObjectTag>? get tags;
  @override
  List<S3ObjectLike>? get likes;
  @override
  List<S3ObjectReply>? get replies;

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectImplCopyWith<_$S3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

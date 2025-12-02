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
  User? get user => throw _privateConstructorUsedError;
  S3ObjectBase? get thumbnail => throw _privateConstructorUsedError;
  S3ObjectBase? get lowRes => throw _privateConstructorUsedError;
  List<S3ObjectTag>? get tags => throw _privateConstructorUsedError;
  List<S3ObjectLike>? get likes => throw _privateConstructorUsedError;
  List<S3ObjectReply>? get replies => throw _privateConstructorUsedError;
  S3ObjectMetadata? get metadata => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  bool get isImage => throw _privateConstructorUsedError;
  bool get isVideo => throw _privateConstructorUsedError;
  bool get isAudio => throw _privateConstructorUsedError;
  bool get isDocument => throw _privateConstructorUsedError;
  bool get isArchive => throw _privateConstructorUsedError;
  bool get isThumbnail => throw _privateConstructorUsedError;
  bool get hasThumbnail => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get lowResUrl => throw _privateConstructorUsedError;
  String? get shareUrl => throw _privateConstructorUsedError;

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
      User? user,
      S3ObjectBase? thumbnail,
      S3ObjectBase? lowRes,
      List<S3ObjectTag>? tags,
      List<S3ObjectLike>? likes,
      List<S3ObjectReply>? replies,
      S3ObjectMetadata? metadata,
      bool isHidden,
      String? fileType,
      bool isImage,
      bool isVideo,
      bool isAudio,
      bool isDocument,
      bool isArchive,
      bool isThumbnail,
      bool hasThumbnail,
      String? thumbnailUrl,
      String? lowResUrl,
      String? shareUrl});

  $UserCopyWith<$Res>? get user;
  $S3ObjectBaseCopyWith<$Res>? get thumbnail;
  $S3ObjectBaseCopyWith<$Res>? get lowRes;
  $S3ObjectMetadataCopyWith<$Res>? get metadata;
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
    Object? user = freezed,
    Object? thumbnail = freezed,
    Object? lowRes = freezed,
    Object? tags = freezed,
    Object? likes = freezed,
    Object? replies = freezed,
    Object? metadata = freezed,
    Object? isHidden = null,
    Object? fileType = freezed,
    Object? isImage = null,
    Object? isVideo = null,
    Object? isAudio = null,
    Object? isDocument = null,
    Object? isArchive = null,
    Object? isThumbnail = null,
    Object? hasThumbnail = null,
    Object? thumbnailUrl = freezed,
    Object? lowResUrl = freezed,
    Object? shareUrl = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as S3ObjectBase?,
      lowRes: freezed == lowRes
          ? _value.lowRes
          : lowRes // ignore: cast_nullable_to_non_nullable
              as S3ObjectBase?,
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
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as S3ObjectMetadata?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      isAudio: null == isAudio
          ? _value.isAudio
          : isAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      isDocument: null == isDocument
          ? _value.isDocument
          : isDocument // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchive: null == isArchive
          ? _value.isArchive
          : isArchive // ignore: cast_nullable_to_non_nullable
              as bool,
      isThumbnail: null == isThumbnail
          ? _value.isThumbnail
          : isThumbnail // ignore: cast_nullable_to_non_nullable
              as bool,
      hasThumbnail: null == hasThumbnail
          ? _value.hasThumbnail
          : hasThumbnail // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lowResUrl: freezed == lowResUrl
          ? _value.lowResUrl
          : lowResUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      shareUrl: freezed == shareUrl
          ? _value.shareUrl
          : shareUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectBaseCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $S3ObjectBaseCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectBaseCopyWith<$Res>? get lowRes {
    if (_value.lowRes == null) {
      return null;
    }

    return $S3ObjectBaseCopyWith<$Res>(_value.lowRes!, (value) {
      return _then(_value.copyWith(lowRes: value) as $Val);
    });
  }

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $S3ObjectMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
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
      User? user,
      S3ObjectBase? thumbnail,
      S3ObjectBase? lowRes,
      List<S3ObjectTag>? tags,
      List<S3ObjectLike>? likes,
      List<S3ObjectReply>? replies,
      S3ObjectMetadata? metadata,
      bool isHidden,
      String? fileType,
      bool isImage,
      bool isVideo,
      bool isAudio,
      bool isDocument,
      bool isArchive,
      bool isThumbnail,
      bool hasThumbnail,
      String? thumbnailUrl,
      String? lowResUrl,
      String? shareUrl});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $S3ObjectBaseCopyWith<$Res>? get thumbnail;
  @override
  $S3ObjectBaseCopyWith<$Res>? get lowRes;
  @override
  $S3ObjectMetadataCopyWith<$Res>? get metadata;
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
    Object? user = freezed,
    Object? thumbnail = freezed,
    Object? lowRes = freezed,
    Object? tags = freezed,
    Object? likes = freezed,
    Object? replies = freezed,
    Object? metadata = freezed,
    Object? isHidden = null,
    Object? fileType = freezed,
    Object? isImage = null,
    Object? isVideo = null,
    Object? isAudio = null,
    Object? isDocument = null,
    Object? isArchive = null,
    Object? isThumbnail = null,
    Object? hasThumbnail = null,
    Object? thumbnailUrl = freezed,
    Object? lowResUrl = freezed,
    Object? shareUrl = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as S3ObjectBase?,
      lowRes: freezed == lowRes
          ? _value.lowRes
          : lowRes // ignore: cast_nullable_to_non_nullable
              as S3ObjectBase?,
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
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as S3ObjectMetadata?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      isAudio: null == isAudio
          ? _value.isAudio
          : isAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      isDocument: null == isDocument
          ? _value.isDocument
          : isDocument // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchive: null == isArchive
          ? _value.isArchive
          : isArchive // ignore: cast_nullable_to_non_nullable
              as bool,
      isThumbnail: null == isThumbnail
          ? _value.isThumbnail
          : isThumbnail // ignore: cast_nullable_to_non_nullable
              as bool,
      hasThumbnail: null == hasThumbnail
          ? _value.hasThumbnail
          : hasThumbnail // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lowResUrl: freezed == lowResUrl
          ? _value.lowResUrl
          : lowResUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      shareUrl: freezed == shareUrl
          ? _value.shareUrl
          : shareUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.user = null,
      this.thumbnail = null,
      this.lowRes = null,
      final List<S3ObjectTag>? tags = const [],
      final List<S3ObjectLike>? likes = const [],
      final List<S3ObjectReply>? replies = const [],
      this.metadata = null,
      this.isHidden = false,
      this.fileType = null,
      this.isImage = false,
      this.isVideo = false,
      this.isAudio = false,
      this.isDocument = false,
      this.isArchive = false,
      this.isThumbnail = false,
      this.hasThumbnail = false,
      this.thumbnailUrl = null,
      this.lowResUrl = null,
      this.shareUrl = null})
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
  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final S3ObjectBase? thumbnail;
  @override
  @JsonKey()
  final S3ObjectBase? lowRes;
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
  @JsonKey()
  final S3ObjectMetadata? metadata;
  @override
  @JsonKey()
  final bool isHidden;
  @override
  @JsonKey()
  final String? fileType;
  @override
  @JsonKey()
  final bool isImage;
  @override
  @JsonKey()
  final bool isVideo;
  @override
  @JsonKey()
  final bool isAudio;
  @override
  @JsonKey()
  final bool isDocument;
  @override
  @JsonKey()
  final bool isArchive;
  @override
  @JsonKey()
  final bool isThumbnail;
  @override
  @JsonKey()
  final bool hasThumbnail;
  @override
  @JsonKey()
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final String? lowResUrl;
  @override
  @JsonKey()
  final String? shareUrl;

  @override
  String toString() {
    return 'S3Object(id: $id, key: $key, url: $url, originalName: $originalName, size: $size, mimetype: $mimetype, active: $active, createdAt: $createdAt, userId: $userId, user: $user, thumbnail: $thumbnail, lowRes: $lowRes, tags: $tags, likes: $likes, replies: $replies, metadata: $metadata, isHidden: $isHidden, fileType: $fileType, isImage: $isImage, isVideo: $isVideo, isAudio: $isAudio, isDocument: $isDocument, isArchive: $isArchive, isThumbnail: $isThumbnail, hasThumbnail: $hasThumbnail, thumbnailUrl: $thumbnailUrl, lowResUrl: $lowResUrl, shareUrl: $shareUrl)';
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
            (identical(other.user, user) || other.user == user) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.lowRes, lowRes) || other.lowRes == lowRes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.isAudio, isAudio) || other.isAudio == isAudio) &&
            (identical(other.isDocument, isDocument) ||
                other.isDocument == isDocument) &&
            (identical(other.isArchive, isArchive) ||
                other.isArchive == isArchive) &&
            (identical(other.isThumbnail, isThumbnail) ||
                other.isThumbnail == isThumbnail) &&
            (identical(other.hasThumbnail, hasThumbnail) ||
                other.hasThumbnail == hasThumbnail) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.lowResUrl, lowResUrl) ||
                other.lowResUrl == lowResUrl) &&
            (identical(other.shareUrl, shareUrl) ||
                other.shareUrl == shareUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        user,
        thumbnail,
        lowRes,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_likes),
        const DeepCollectionEquality().hash(_replies),
        metadata,
        isHidden,
        fileType,
        isImage,
        isVideo,
        isAudio,
        isDocument,
        isArchive,
        isThumbnail,
        hasThumbnail,
        thumbnailUrl,
        lowResUrl,
        shareUrl
      ]);

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
      final User? user,
      final S3ObjectBase? thumbnail,
      final S3ObjectBase? lowRes,
      final List<S3ObjectTag>? tags,
      final List<S3ObjectLike>? likes,
      final List<S3ObjectReply>? replies,
      final S3ObjectMetadata? metadata,
      final bool isHidden,
      final String? fileType,
      final bool isImage,
      final bool isVideo,
      final bool isAudio,
      final bool isDocument,
      final bool isArchive,
      final bool isThumbnail,
      final bool hasThumbnail,
      final String? thumbnailUrl,
      final String? lowResUrl,
      final String? shareUrl}) = _$S3ObjectImpl;
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
  User? get user;
  @override
  S3ObjectBase? get thumbnail;
  @override
  S3ObjectBase? get lowRes;
  @override
  List<S3ObjectTag>? get tags;
  @override
  List<S3ObjectLike>? get likes;
  @override
  List<S3ObjectReply>? get replies;
  @override
  S3ObjectMetadata? get metadata;
  @override
  bool get isHidden;
  @override
  String? get fileType;
  @override
  bool get isImage;
  @override
  bool get isVideo;
  @override
  bool get isAudio;
  @override
  bool get isDocument;
  @override
  bool get isArchive;
  @override
  bool get isThumbnail;
  @override
  bool get hasThumbnail;
  @override
  String? get thumbnailUrl;
  @override
  String? get lowResUrl;
  @override
  String? get shareUrl;

  /// Create a copy of S3Object
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectImplCopyWith<_$S3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

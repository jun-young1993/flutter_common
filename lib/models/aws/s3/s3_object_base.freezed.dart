// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectBase _$S3ObjectBaseFromJson(Map<String, dynamic> json) {
  return _S3ObjectBase.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectBase {
  String get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get mimetype => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
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

  /// Serializes this S3ObjectBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectBaseCopyWith<S3ObjectBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectBaseCopyWith<$Res> {
  factory $S3ObjectBaseCopyWith(
          S3ObjectBase value, $Res Function(S3ObjectBase) then) =
      _$S3ObjectBaseCopyWithImpl<$Res, S3ObjectBase>;
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
      bool isHidden,
      String? fileType,
      bool isImage,
      bool isVideo,
      bool isAudio,
      bool isDocument,
      bool isArchive,
      bool isThumbnail,
      bool hasThumbnail,
      String? thumbnailUrl});
}

/// @nodoc
class _$S3ObjectBaseCopyWithImpl<$Res, $Val extends S3ObjectBase>
    implements $S3ObjectBaseCopyWith<$Res> {
  _$S3ObjectBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectBase
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectBaseImplCopyWith<$Res>
    implements $S3ObjectBaseCopyWith<$Res> {
  factory _$$S3ObjectBaseImplCopyWith(
          _$S3ObjectBaseImpl value, $Res Function(_$S3ObjectBaseImpl) then) =
      __$$S3ObjectBaseImplCopyWithImpl<$Res>;
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
      bool isHidden,
      String? fileType,
      bool isImage,
      bool isVideo,
      bool isAudio,
      bool isDocument,
      bool isArchive,
      bool isThumbnail,
      bool hasThumbnail,
      String? thumbnailUrl});
}

/// @nodoc
class __$$S3ObjectBaseImplCopyWithImpl<$Res>
    extends _$S3ObjectBaseCopyWithImpl<$Res, _$S3ObjectBaseImpl>
    implements _$$S3ObjectBaseImplCopyWith<$Res> {
  __$$S3ObjectBaseImplCopyWithImpl(
      _$S3ObjectBaseImpl _value, $Res Function(_$S3ObjectBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectBase
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
  }) {
    return _then(_$S3ObjectBaseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectBaseImpl extends _S3ObjectBase {
  const _$S3ObjectBaseImpl(
      {required this.id,
      this.key = null,
      this.url = null,
      this.originalName = null,
      this.size = null,
      this.mimetype = null,
      this.active = false,
      this.createdAt = null,
      this.userId = null,
      this.isHidden = false,
      this.fileType = null,
      this.isImage = false,
      this.isVideo = false,
      this.isAudio = false,
      this.isDocument = false,
      this.isArchive = false,
      this.isThumbnail = false,
      this.hasThumbnail = false,
      this.thumbnailUrl = null})
      : super._();

  factory _$S3ObjectBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectBaseImplFromJson(json);

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
  String toString() {
    return 'S3ObjectBase(id: $id, key: $key, url: $url, originalName: $originalName, size: $size, mimetype: $mimetype, active: $active, createdAt: $createdAt, userId: $userId, isHidden: $isHidden, fileType: $fileType, isImage: $isImage, isVideo: $isVideo, isAudio: $isAudio, isDocument: $isDocument, isArchive: $isArchive, isThumbnail: $isThumbnail, hasThumbnail: $hasThumbnail, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectBaseImpl &&
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
                other.thumbnailUrl == thumbnailUrl));
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
        isHidden,
        fileType,
        isImage,
        isVideo,
        isAudio,
        isDocument,
        isArchive,
        isThumbnail,
        hasThumbnail,
        thumbnailUrl
      ]);

  /// Create a copy of S3ObjectBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectBaseImplCopyWith<_$S3ObjectBaseImpl> get copyWith =>
      __$$S3ObjectBaseImplCopyWithImpl<_$S3ObjectBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectBaseImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectBase extends S3ObjectBase {
  const factory _S3ObjectBase(
      {required final String id,
      final String? key,
      final String? url,
      final String? originalName,
      final int? size,
      final String? mimetype,
      final bool active,
      final DateTime? createdAt,
      final String? userId,
      final bool isHidden,
      final String? fileType,
      final bool isImage,
      final bool isVideo,
      final bool isAudio,
      final bool isDocument,
      final bool isArchive,
      final bool isThumbnail,
      final bool hasThumbnail,
      final String? thumbnailUrl}) = _$S3ObjectBaseImpl;
  const _S3ObjectBase._() : super._();

  factory _S3ObjectBase.fromJson(Map<String, dynamic> json) =
      _$S3ObjectBaseImpl.fromJson;

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

  /// Create a copy of S3ObjectBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectBaseImplCopyWith<_$S3ObjectBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

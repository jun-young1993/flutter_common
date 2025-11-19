// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$S3ObjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectEventCopyWith<$Res> {
  factory $S3ObjectEventCopyWith(
          S3ObjectEvent value, $Res Function(S3ObjectEvent) then) =
      _$S3ObjectEventCopyWithImpl<$Res, S3ObjectEvent>;
}

/// @nodoc
class _$S3ObjectEventCopyWithImpl<$Res, $Val extends S3ObjectEvent>
    implements $S3ObjectEventCopyWith<$Res> {
  _$S3ObjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'S3ObjectEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements S3ObjectEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$GetS3ObjectsImplCopyWith<$Res> {
  factory _$$GetS3ObjectsImplCopyWith(
          _$GetS3ObjectsImpl value, $Res Function(_$GetS3ObjectsImpl) then) =
      __$$GetS3ObjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int skip, int take, List<S3ObjectTag>? tags});
}

/// @nodoc
class __$$GetS3ObjectsImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$GetS3ObjectsImpl>
    implements _$$GetS3ObjectsImplCopyWith<$Res> {
  __$$GetS3ObjectsImplCopyWithImpl(
      _$GetS3ObjectsImpl _value, $Res Function(_$GetS3ObjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? take = null,
    Object? tags = freezed,
  }) {
    return _then(_$GetS3ObjectsImpl(
      null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<S3ObjectTag>?,
    ));
  }
}

/// @nodoc

class _$GetS3ObjectsImpl implements _GetS3Objects {
  const _$GetS3ObjectsImpl(this.skip, this.take,
      {final List<S3ObjectTag>? tags})
      : _tags = tags;

  @override
  final int skip;
  @override
  final int take;
  final List<S3ObjectTag>? _tags;
  @override
  List<S3ObjectTag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'S3ObjectEvent.getS3Objects(skip: $skip, take: $take, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetS3ObjectsImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.take, take) || other.take == take) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, skip, take, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetS3ObjectsImplCopyWith<_$GetS3ObjectsImpl> get copyWith =>
      __$$GetS3ObjectsImplCopyWithImpl<_$GetS3ObjectsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return getS3Objects(skip, take, tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return getS3Objects?.call(skip, take, tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (getS3Objects != null) {
      return getS3Objects(skip, take, tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return getS3Objects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return getS3Objects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (getS3Objects != null) {
      return getS3Objects(this);
    }
    return orElse();
  }
}

abstract class _GetS3Objects implements S3ObjectEvent {
  const factory _GetS3Objects(final int skip, final int take,
      {final List<S3ObjectTag>? tags}) = _$GetS3ObjectsImpl;

  int get skip;
  int get take;
  List<S3ObjectTag>? get tags;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetS3ObjectsImplCopyWith<_$GetS3ObjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorImplCopyWith<$Res> {
  factory _$$ClearErrorImplCopyWith(
          _$ClearErrorImpl value, $Res Function(_$ClearErrorImpl) then) =
      __$$ClearErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$ClearErrorImpl>
    implements _$$ClearErrorImplCopyWith<$Res> {
  __$$ClearErrorImplCopyWithImpl(
      _$ClearErrorImpl _value, $Res Function(_$ClearErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorImpl implements _ClearError {
  const _$ClearErrorImpl();

  @override
  String toString() {
    return 'S3ObjectEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearError implements S3ObjectEvent {
  const factory _ClearError() = _$ClearErrorImpl;
}

/// @nodoc
abstract class _$$UploadFileImplCopyWith<$Res> {
  factory _$$UploadFileImplCopyWith(
          _$UploadFileImpl value, $Res Function(_$UploadFileImpl) then) =
      __$$UploadFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UploadFileImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$UploadFileImpl>
    implements _$$UploadFileImplCopyWith<$Res> {
  __$$UploadFileImplCopyWithImpl(
      _$UploadFileImpl _value, $Res Function(_$UploadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? user = null,
  }) {
    return _then(_$UploadFileImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UploadFileImpl implements _UploadFile {
  const _$UploadFileImpl(this.file, this.user);

  @override
  final File file;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.uploadFile(file: $file, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      __$$UploadFileImplCopyWithImpl<_$UploadFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return uploadFile(file, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return uploadFile?.call(file, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(file, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return uploadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return uploadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(this);
    }
    return orElse();
  }
}

abstract class _UploadFile implements S3ObjectEvent {
  const factory _UploadFile(final File file, final User user) =
      _$UploadFileImpl;

  File get file;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadFilesImplCopyWith<$Res> {
  factory _$$UploadFilesImplCopyWith(
          _$UploadFilesImpl value, $Res Function(_$UploadFilesImpl) then) =
      __$$UploadFilesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UploadFilesImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$UploadFilesImpl>
    implements _$$UploadFilesImplCopyWith<$Res> {
  __$$UploadFilesImplCopyWithImpl(
      _$UploadFilesImpl _value, $Res Function(_$UploadFilesImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? user = null,
  }) {
    return _then(_$UploadFilesImpl(
      null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UploadFilesImpl implements _UploadFiles {
  const _$UploadFilesImpl(final List<File> files, this.user) : _files = files;

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.uploadFiles(files: $files, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFilesImpl &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_files), user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFilesImplCopyWith<_$UploadFilesImpl> get copyWith =>
      __$$UploadFilesImplCopyWithImpl<_$UploadFilesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return uploadFiles(files, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return uploadFiles?.call(files, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (uploadFiles != null) {
      return uploadFiles(files, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return uploadFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return uploadFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (uploadFiles != null) {
      return uploadFiles(this);
    }
    return orElse();
  }
}

abstract class _UploadFiles implements S3ObjectEvent {
  const factory _UploadFiles(final List<File> files, final User user) =
      _$UploadFilesImpl;

  List<File> get files;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFilesImplCopyWith<_$UploadFilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFileImplCopyWith<$Res> {
  factory _$$DeleteFileImplCopyWith(
          _$DeleteFileImpl value, $Res Function(_$DeleteFileImpl) then) =
      __$$DeleteFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3Object s3Object, User user});

  $S3ObjectCopyWith<$Res> get s3Object;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$DeleteFileImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$DeleteFileImpl>
    implements _$$DeleteFileImplCopyWith<$Res> {
  __$$DeleteFileImplCopyWithImpl(
      _$DeleteFileImpl _value, $Res Function(_$DeleteFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Object = null,
    Object? user = null,
  }) {
    return _then(_$DeleteFileImpl(
      null == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get s3Object {
    return $S3ObjectCopyWith<$Res>(_value.s3Object, (value) {
      return _then(_value.copyWith(s3Object: value));
    });
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DeleteFileImpl implements _DeleteFile {
  const _$DeleteFileImpl(this.s3Object, this.user);

  @override
  final S3Object s3Object;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.deleteFile(s3Object: $s3Object, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFileImpl &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3Object, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFileImplCopyWith<_$DeleteFileImpl> get copyWith =>
      __$$DeleteFileImplCopyWithImpl<_$DeleteFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return deleteFile(s3Object, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return deleteFile?.call(s3Object, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(s3Object, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return deleteFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return deleteFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(this);
    }
    return orElse();
  }
}

abstract class _DeleteFile implements S3ObjectEvent {
  const factory _DeleteFile(final S3Object s3Object, final User user) =
      _$DeleteFileImpl;

  S3Object get s3Object;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFileImplCopyWith<_$DeleteFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FindOneOrFailImplCopyWith<$Res> {
  factory _$$FindOneOrFailImplCopyWith(
          _$FindOneOrFailImpl value, $Res Function(_$FindOneOrFailImpl) then) =
      __$$FindOneOrFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$FindOneOrFailImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$FindOneOrFailImpl>
    implements _$$FindOneOrFailImplCopyWith<$Res> {
  __$$FindOneOrFailImplCopyWithImpl(
      _$FindOneOrFailImpl _value, $Res Function(_$FindOneOrFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$FindOneOrFailImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$FindOneOrFailImpl implements _FindOneOrFail {
  const _$FindOneOrFailImpl(this.id, this.user);

  @override
  final String id;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.findOneOrFail(id: $id, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindOneOrFailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindOneOrFailImplCopyWith<_$FindOneOrFailImpl> get copyWith =>
      __$$FindOneOrFailImplCopyWithImpl<_$FindOneOrFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return findOneOrFail(id, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return findOneOrFail?.call(id, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (findOneOrFail != null) {
      return findOneOrFail(id, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return findOneOrFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return findOneOrFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (findOneOrFail != null) {
      return findOneOrFail(this);
    }
    return orElse();
  }
}

abstract class _FindOneOrFail implements S3ObjectEvent {
  const factory _FindOneOrFail(final String id, final User user) =
      _$FindOneOrFailImpl;

  String get id;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindOneOrFailImplCopyWith<_$FindOneOrFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountImplCopyWith<$Res> {
  factory _$$CountImplCopyWith(
          _$CountImpl value, $Res Function(_$CountImpl) then) =
      __$$CountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$CountImpl>
    implements _$$CountImplCopyWith<$Res> {
  __$$CountImplCopyWithImpl(
      _$CountImpl _value, $Res Function(_$CountImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CountImpl implements _Count {
  const _$CountImpl();

  @override
  String toString() {
    return 'S3ObjectEvent.count()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return count();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return count?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return count(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return count?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count(this);
    }
    return orElse();
  }
}

abstract class _Count implements S3ObjectEvent {
  const factory _Count() = _$CountImpl;
}

/// @nodoc
abstract class _$$CheckObjectsExistenceByMonthImplCopyWith<$Res> {
  factory _$$CheckObjectsExistenceByMonthImplCopyWith(
          _$CheckObjectsExistenceByMonthImpl value,
          $Res Function(_$CheckObjectsExistenceByMonthImpl) then) =
      __$$CheckObjectsExistenceByMonthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String year, String month});
}

/// @nodoc
class __$$CheckObjectsExistenceByMonthImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res,
        _$CheckObjectsExistenceByMonthImpl>
    implements _$$CheckObjectsExistenceByMonthImplCopyWith<$Res> {
  __$$CheckObjectsExistenceByMonthImplCopyWithImpl(
      _$CheckObjectsExistenceByMonthImpl _value,
      $Res Function(_$CheckObjectsExistenceByMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_$CheckObjectsExistenceByMonthImpl(
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckObjectsExistenceByMonthImpl
    implements _CheckObjectsExistenceByMonth {
  const _$CheckObjectsExistenceByMonthImpl(this.year, this.month);

  @override
  final String year;
  @override
  final String month;

  @override
  String toString() {
    return 'S3ObjectEvent.checkObjectsExistenceByMonth(year: $year, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckObjectsExistenceByMonthImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckObjectsExistenceByMonthImplCopyWith<
          _$CheckObjectsExistenceByMonthImpl>
      get copyWith => __$$CheckObjectsExistenceByMonthImplCopyWithImpl<
          _$CheckObjectsExistenceByMonthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return checkObjectsExistenceByMonth(year, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return checkObjectsExistenceByMonth?.call(year, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (checkObjectsExistenceByMonth != null) {
      return checkObjectsExistenceByMonth(year, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return checkObjectsExistenceByMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return checkObjectsExistenceByMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (checkObjectsExistenceByMonth != null) {
      return checkObjectsExistenceByMonth(this);
    }
    return orElse();
  }
}

abstract class _CheckObjectsExistenceByMonth implements S3ObjectEvent {
  const factory _CheckObjectsExistenceByMonth(
          final String year, final String month) =
      _$CheckObjectsExistenceByMonthImpl;

  String get year;
  String get month;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckObjectsExistenceByMonthImplCopyWith<
          _$CheckObjectsExistenceByMonthImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetObjectsByDateImplCopyWith<$Res> {
  factory _$$GetObjectsByDateImplCopyWith(_$GetObjectsByDateImpl value,
          $Res Function(_$GetObjectsByDateImpl) then) =
      __$$GetObjectsByDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String year, String month, String day, int? skip, int? take});
}

/// @nodoc
class __$$GetObjectsByDateImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$GetObjectsByDateImpl>
    implements _$$GetObjectsByDateImplCopyWith<$Res> {
  __$$GetObjectsByDateImplCopyWithImpl(_$GetObjectsByDateImpl _value,
      $Res Function(_$GetObjectsByDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? skip = freezed,
    Object? take = freezed,
  }) {
    return _then(_$GetObjectsByDateImpl(
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetObjectsByDateImpl implements _GetObjectsByDate {
  const _$GetObjectsByDateImpl(
      this.year, this.month, this.day, this.skip, this.take);

  @override
  final String year;
  @override
  final String month;
  @override
  final String day;
  @override
  final int? skip;
  @override
  final int? take;

  @override
  String toString() {
    return 'S3ObjectEvent.getObjectsByDate(year: $year, month: $month, day: $day, skip: $skip, take: $take)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetObjectsByDateImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.take, take) || other.take == take));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month, day, skip, take);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetObjectsByDateImplCopyWith<_$GetObjectsByDateImpl> get copyWith =>
      __$$GetObjectsByDateImplCopyWithImpl<_$GetObjectsByDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return getObjectsByDate(year, month, day, skip, take);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return getObjectsByDate?.call(year, month, day, skip, take);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (getObjectsByDate != null) {
      return getObjectsByDate(year, month, day, skip, take);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return getObjectsByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return getObjectsByDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (getObjectsByDate != null) {
      return getObjectsByDate(this);
    }
    return orElse();
  }
}

abstract class _GetObjectsByDate implements S3ObjectEvent {
  const factory _GetObjectsByDate(
      final String year,
      final String month,
      final String day,
      final int? skip,
      final int? take) = _$GetObjectsByDateImpl;

  String get year;
  String get month;
  String get day;
  int? get skip;
  int? get take;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetObjectsByDateImplCopyWith<_$GetObjectsByDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeS3ObjectImplCopyWith<$Res> {
  factory _$$LikeS3ObjectImplCopyWith(
          _$LikeS3ObjectImpl value, $Res Function(_$LikeS3ObjectImpl) then) =
      __$$LikeS3ObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3Object s3Object, User user});

  $S3ObjectCopyWith<$Res> get s3Object;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LikeS3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$LikeS3ObjectImpl>
    implements _$$LikeS3ObjectImplCopyWith<$Res> {
  __$$LikeS3ObjectImplCopyWithImpl(
      _$LikeS3ObjectImpl _value, $Res Function(_$LikeS3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Object = null,
    Object? user = null,
  }) {
    return _then(_$LikeS3ObjectImpl(
      null == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get s3Object {
    return $S3ObjectCopyWith<$Res>(_value.s3Object, (value) {
      return _then(_value.copyWith(s3Object: value));
    });
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LikeS3ObjectImpl implements _LikeS3Object {
  const _$LikeS3ObjectImpl(this.s3Object, this.user);

  @override
  final S3Object s3Object;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.likeS3Object(s3Object: $s3Object, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeS3ObjectImpl &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3Object, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeS3ObjectImplCopyWith<_$LikeS3ObjectImpl> get copyWith =>
      __$$LikeS3ObjectImplCopyWithImpl<_$LikeS3ObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return likeS3Object(s3Object, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return likeS3Object?.call(s3Object, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (likeS3Object != null) {
      return likeS3Object(s3Object, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return likeS3Object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return likeS3Object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (likeS3Object != null) {
      return likeS3Object(this);
    }
    return orElse();
  }
}

abstract class _LikeS3Object implements S3ObjectEvent {
  const factory _LikeS3Object(final S3Object s3Object, final User user) =
      _$LikeS3ObjectImpl;

  S3Object get s3Object;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeS3ObjectImplCopyWith<_$LikeS3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveLikeS3ObjectImplCopyWith<$Res> {
  factory _$$RemoveLikeS3ObjectImplCopyWith(_$RemoveLikeS3ObjectImpl value,
          $Res Function(_$RemoveLikeS3ObjectImpl) then) =
      __$$RemoveLikeS3ObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3ObjectLike s3ObjectLike, User user});

  $S3ObjectLikeCopyWith<$Res> get s3ObjectLike;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RemoveLikeS3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$RemoveLikeS3ObjectImpl>
    implements _$$RemoveLikeS3ObjectImplCopyWith<$Res> {
  __$$RemoveLikeS3ObjectImplCopyWithImpl(_$RemoveLikeS3ObjectImpl _value,
      $Res Function(_$RemoveLikeS3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3ObjectLike = null,
    Object? user = null,
  }) {
    return _then(_$RemoveLikeS3ObjectImpl(
      null == s3ObjectLike
          ? _value.s3ObjectLike
          : s3ObjectLike // ignore: cast_nullable_to_non_nullable
              as S3ObjectLike,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectLikeCopyWith<$Res> get s3ObjectLike {
    return $S3ObjectLikeCopyWith<$Res>(_value.s3ObjectLike, (value) {
      return _then(_value.copyWith(s3ObjectLike: value));
    });
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RemoveLikeS3ObjectImpl implements _RemoveLikeS3Object {
  const _$RemoveLikeS3ObjectImpl(this.s3ObjectLike, this.user);

  @override
  final S3ObjectLike s3ObjectLike;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.removeLikeS3Object(s3ObjectLike: $s3ObjectLike, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveLikeS3ObjectImpl &&
            (identical(other.s3ObjectLike, s3ObjectLike) ||
                other.s3ObjectLike == s3ObjectLike) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3ObjectLike, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveLikeS3ObjectImplCopyWith<_$RemoveLikeS3ObjectImpl> get copyWith =>
      __$$RemoveLikeS3ObjectImplCopyWithImpl<_$RemoveLikeS3ObjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return removeLikeS3Object(s3ObjectLike, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return removeLikeS3Object?.call(s3ObjectLike, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (removeLikeS3Object != null) {
      return removeLikeS3Object(s3ObjectLike, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return removeLikeS3Object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return removeLikeS3Object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (removeLikeS3Object != null) {
      return removeLikeS3Object(this);
    }
    return orElse();
  }
}

abstract class _RemoveLikeS3Object implements S3ObjectEvent {
  const factory _RemoveLikeS3Object(
          final S3ObjectLike s3ObjectLike, final User user) =
      _$RemoveLikeS3ObjectImpl;

  S3ObjectLike get s3ObjectLike;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveLikeS3ObjectImplCopyWith<_$RemoveLikeS3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplyS3ObjectImplCopyWith<$Res> {
  factory _$$ReplyS3ObjectImplCopyWith(
          _$ReplyS3ObjectImpl value, $Res Function(_$ReplyS3ObjectImpl) then) =
      __$$ReplyS3ObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3Object s3Object, User user, String content});

  $S3ObjectCopyWith<$Res> get s3Object;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ReplyS3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$ReplyS3ObjectImpl>
    implements _$$ReplyS3ObjectImplCopyWith<$Res> {
  __$$ReplyS3ObjectImplCopyWithImpl(
      _$ReplyS3ObjectImpl _value, $Res Function(_$ReplyS3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Object = null,
    Object? user = null,
    Object? content = null,
  }) {
    return _then(_$ReplyS3ObjectImpl(
      null == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get s3Object {
    return $S3ObjectCopyWith<$Res>(_value.s3Object, (value) {
      return _then(_value.copyWith(s3Object: value));
    });
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ReplyS3ObjectImpl implements _ReplyS3Object {
  const _$ReplyS3ObjectImpl(this.s3Object, this.user, this.content);

  @override
  final S3Object s3Object;
  @override
  final User user;
  @override
  final String content;

  @override
  String toString() {
    return 'S3ObjectEvent.replyS3Object(s3Object: $s3Object, user: $user, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyS3ObjectImpl &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3Object, user, content);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyS3ObjectImplCopyWith<_$ReplyS3ObjectImpl> get copyWith =>
      __$$ReplyS3ObjectImplCopyWithImpl<_$ReplyS3ObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return replyS3Object(s3Object, user, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return replyS3Object?.call(s3Object, user, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (replyS3Object != null) {
      return replyS3Object(s3Object, user, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return replyS3Object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return replyS3Object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (replyS3Object != null) {
      return replyS3Object(this);
    }
    return orElse();
  }
}

abstract class _ReplyS3Object implements S3ObjectEvent {
  const factory _ReplyS3Object(
          final S3Object s3Object, final User user, final String content) =
      _$ReplyS3ObjectImpl;

  S3Object get s3Object;
  User get user;
  String get content;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyS3ObjectImplCopyWith<_$ReplyS3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveReplyS3ObjectImplCopyWith<$Res> {
  factory _$$RemoveReplyS3ObjectImplCopyWith(_$RemoveReplyS3ObjectImpl value,
          $Res Function(_$RemoveReplyS3ObjectImpl) then) =
      __$$RemoveReplyS3ObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3ObjectReply s3ObjectReply, User user});

  $S3ObjectReplyCopyWith<$Res> get s3ObjectReply;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RemoveReplyS3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$RemoveReplyS3ObjectImpl>
    implements _$$RemoveReplyS3ObjectImplCopyWith<$Res> {
  __$$RemoveReplyS3ObjectImplCopyWithImpl(_$RemoveReplyS3ObjectImpl _value,
      $Res Function(_$RemoveReplyS3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3ObjectReply = null,
    Object? user = null,
  }) {
    return _then(_$RemoveReplyS3ObjectImpl(
      null == s3ObjectReply
          ? _value.s3ObjectReply
          : s3ObjectReply // ignore: cast_nullable_to_non_nullable
              as S3ObjectReply,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectReplyCopyWith<$Res> get s3ObjectReply {
    return $S3ObjectReplyCopyWith<$Res>(_value.s3ObjectReply, (value) {
      return _then(_value.copyWith(s3ObjectReply: value));
    });
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RemoveReplyS3ObjectImpl implements _RemoveReplyS3Object {
  const _$RemoveReplyS3ObjectImpl(this.s3ObjectReply, this.user);

  @override
  final S3ObjectReply s3ObjectReply;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.removeReplyS3Object(s3ObjectReply: $s3ObjectReply, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveReplyS3ObjectImpl &&
            (identical(other.s3ObjectReply, s3ObjectReply) ||
                other.s3ObjectReply == s3ObjectReply) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3ObjectReply, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveReplyS3ObjectImplCopyWith<_$RemoveReplyS3ObjectImpl> get copyWith =>
      __$$RemoveReplyS3ObjectImplCopyWithImpl<_$RemoveReplyS3ObjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return removeReplyS3Object(s3ObjectReply, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return removeReplyS3Object?.call(s3ObjectReply, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (removeReplyS3Object != null) {
      return removeReplyS3Object(s3ObjectReply, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return removeReplyS3Object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return removeReplyS3Object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (removeReplyS3Object != null) {
      return removeReplyS3Object(this);
    }
    return orElse();
  }
}

abstract class _RemoveReplyS3Object implements S3ObjectEvent {
  const factory _RemoveReplyS3Object(
          final S3ObjectReply s3ObjectReply, final User user) =
      _$RemoveReplyS3ObjectImpl;

  S3ObjectReply get s3ObjectReply;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveReplyS3ObjectImplCopyWith<_$RemoveReplyS3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportS3ObjectImplCopyWith<$Res> {
  factory _$$ReportS3ObjectImplCopyWith(_$ReportS3ObjectImpl value,
          $Res Function(_$ReportS3ObjectImpl) then) =
      __$$ReportS3ObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3Object s3Object, ReportReason type, String? content});

  $S3ObjectCopyWith<$Res> get s3Object;
}

/// @nodoc
class __$$ReportS3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$ReportS3ObjectImpl>
    implements _$$ReportS3ObjectImplCopyWith<$Res> {
  __$$ReportS3ObjectImplCopyWithImpl(
      _$ReportS3ObjectImpl _value, $Res Function(_$ReportS3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Object = null,
    Object? type = null,
    Object? content = freezed,
  }) {
    return _then(_$ReportS3ObjectImpl(
      null == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReportReason,
      freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get s3Object {
    return $S3ObjectCopyWith<$Res>(_value.s3Object, (value) {
      return _then(_value.copyWith(s3Object: value));
    });
  }
}

/// @nodoc

class _$ReportS3ObjectImpl implements _ReportS3Object {
  const _$ReportS3ObjectImpl(this.s3Object, this.type, this.content);

  @override
  final S3Object s3Object;
  @override
  final ReportReason type;
  @override
  final String? content;

  @override
  String toString() {
    return 'S3ObjectEvent.reportS3Object(s3Object: $s3Object, type: $type, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportS3ObjectImpl &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3Object, type, content);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportS3ObjectImplCopyWith<_$ReportS3ObjectImpl> get copyWith =>
      __$$ReportS3ObjectImplCopyWithImpl<_$ReportS3ObjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return reportS3Object(s3Object, type, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return reportS3Object?.call(s3Object, type, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (reportS3Object != null) {
      return reportS3Object(s3Object, type, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return reportS3Object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return reportS3Object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (reportS3Object != null) {
      return reportS3Object(this);
    }
    return orElse();
  }
}

abstract class _ReportS3Object implements S3ObjectEvent {
  const factory _ReportS3Object(final S3Object s3Object,
      final ReportReason type, final String? content) = _$ReportS3ObjectImpl;

  S3Object get s3Object;
  ReportReason get type;
  String? get content;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportS3ObjectImplCopyWith<_$ReportS3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportS3ObjectReplyImplCopyWith<$Res> {
  factory _$$ReportS3ObjectReplyImplCopyWith(_$ReportS3ObjectReplyImpl value,
          $Res Function(_$ReportS3ObjectReplyImpl) then) =
      __$$ReportS3ObjectReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3ObjectReply s3ObjectReply, ReportReason type, String? content});

  $S3ObjectReplyCopyWith<$Res> get s3ObjectReply;
}

/// @nodoc
class __$$ReportS3ObjectReplyImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$ReportS3ObjectReplyImpl>
    implements _$$ReportS3ObjectReplyImplCopyWith<$Res> {
  __$$ReportS3ObjectReplyImplCopyWithImpl(_$ReportS3ObjectReplyImpl _value,
      $Res Function(_$ReportS3ObjectReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3ObjectReply = null,
    Object? type = null,
    Object? content = freezed,
  }) {
    return _then(_$ReportS3ObjectReplyImpl(
      null == s3ObjectReply
          ? _value.s3ObjectReply
          : s3ObjectReply // ignore: cast_nullable_to_non_nullable
              as S3ObjectReply,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReportReason,
      freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectReplyCopyWith<$Res> get s3ObjectReply {
    return $S3ObjectReplyCopyWith<$Res>(_value.s3ObjectReply, (value) {
      return _then(_value.copyWith(s3ObjectReply: value));
    });
  }
}

/// @nodoc

class _$ReportS3ObjectReplyImpl implements _ReportS3ObjectReply {
  const _$ReportS3ObjectReplyImpl(this.s3ObjectReply, this.type, this.content);

  @override
  final S3ObjectReply s3ObjectReply;
  @override
  final ReportReason type;
  @override
  final String? content;

  @override
  String toString() {
    return 'S3ObjectEvent.reportS3ObjectReply(s3ObjectReply: $s3ObjectReply, type: $type, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportS3ObjectReplyImpl &&
            (identical(other.s3ObjectReply, s3ObjectReply) ||
                other.s3ObjectReply == s3ObjectReply) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3ObjectReply, type, content);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportS3ObjectReplyImplCopyWith<_$ReportS3ObjectReplyImpl> get copyWith =>
      __$$ReportS3ObjectReplyImplCopyWithImpl<_$ReportS3ObjectReplyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return reportS3ObjectReply(s3ObjectReply, type, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return reportS3ObjectReply?.call(s3ObjectReply, type, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (reportS3ObjectReply != null) {
      return reportS3ObjectReply(s3ObjectReply, type, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return reportS3ObjectReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return reportS3ObjectReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (reportS3ObjectReply != null) {
      return reportS3ObjectReply(this);
    }
    return orElse();
  }
}

abstract class _ReportS3ObjectReply implements S3ObjectEvent {
  const factory _ReportS3ObjectReply(
      final S3ObjectReply s3ObjectReply,
      final ReportReason type,
      final String? content) = _$ReportS3ObjectReplyImpl;

  S3ObjectReply get s3ObjectReply;
  ReportReason get type;
  String? get content;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportS3ObjectReplyImplCopyWith<_$ReportS3ObjectReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetS3ObjectSurroundImplCopyWith<$Res> {
  factory _$$GetS3ObjectSurroundImplCopyWith(_$GetS3ObjectSurroundImpl value,
          $Res Function(_$GetS3ObjectSurroundImpl) then) =
      __$$GetS3ObjectSurroundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3Object s3Object});

  $S3ObjectCopyWith<$Res> get s3Object;
}

/// @nodoc
class __$$GetS3ObjectSurroundImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$GetS3ObjectSurroundImpl>
    implements _$$GetS3ObjectSurroundImplCopyWith<$Res> {
  __$$GetS3ObjectSurroundImplCopyWithImpl(_$GetS3ObjectSurroundImpl _value,
      $Res Function(_$GetS3ObjectSurroundImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Object = null,
  }) {
    return _then(_$GetS3ObjectSurroundImpl(
      null == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get s3Object {
    return $S3ObjectCopyWith<$Res>(_value.s3Object, (value) {
      return _then(_value.copyWith(s3Object: value));
    });
  }
}

/// @nodoc

class _$GetS3ObjectSurroundImpl implements _GetS3ObjectSurround {
  const _$GetS3ObjectSurroundImpl(this.s3Object);

  @override
  final S3Object s3Object;

  @override
  String toString() {
    return 'S3ObjectEvent.getS3ObjectSurround(s3Object: $s3Object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetS3ObjectSurroundImpl &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3Object);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetS3ObjectSurroundImplCopyWith<_$GetS3ObjectSurroundImpl> get copyWith =>
      __$$GetS3ObjectSurroundImplCopyWithImpl<_$GetS3ObjectSurroundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return getS3ObjectSurround(s3Object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return getS3ObjectSurround?.call(s3Object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (getS3ObjectSurround != null) {
      return getS3ObjectSurround(s3Object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return getS3ObjectSurround(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return getS3ObjectSurround?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (getS3ObjectSurround != null) {
      return getS3ObjectSurround(this);
    }
    return orElse();
  }
}

abstract class _GetS3ObjectSurround implements S3ObjectEvent {
  const factory _GetS3ObjectSurround(final S3Object s3Object) =
      _$GetS3ObjectSurroundImpl;

  S3Object get s3Object;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetS3ObjectSurroundImplCopyWith<_$GetS3ObjectSurroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearUploadErrorImplCopyWith<$Res> {
  factory _$$ClearUploadErrorImplCopyWith(_$ClearUploadErrorImpl value,
          $Res Function(_$ClearUploadErrorImpl) then) =
      __$$ClearUploadErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUploadErrorImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$ClearUploadErrorImpl>
    implements _$$ClearUploadErrorImplCopyWith<$Res> {
  __$$ClearUploadErrorImplCopyWithImpl(_$ClearUploadErrorImpl _value,
      $Res Function(_$ClearUploadErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearUploadErrorImpl implements _ClearUploadError {
  const _$ClearUploadErrorImpl();

  @override
  String toString() {
    return 'S3ObjectEvent.clearUploadError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearUploadErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return clearUploadError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return clearUploadError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (clearUploadError != null) {
      return clearUploadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return clearUploadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return clearUploadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (clearUploadError != null) {
      return clearUploadError(this);
    }
    return orElse();
  }
}

abstract class _ClearUploadError implements S3ObjectEvent {
  const factory _ClearUploadError() = _$ClearUploadErrorImpl;
}

/// @nodoc
abstract class _$$InitializeEmotionTagsImplCopyWith<$Res> {
  factory _$$InitializeEmotionTagsImplCopyWith(
          _$InitializeEmotionTagsImpl value,
          $Res Function(_$InitializeEmotionTagsImpl) then) =
      __$$InitializeEmotionTagsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeEmotionTagsImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$InitializeEmotionTagsImpl>
    implements _$$InitializeEmotionTagsImplCopyWith<$Res> {
  __$$InitializeEmotionTagsImplCopyWithImpl(_$InitializeEmotionTagsImpl _value,
      $Res Function(_$InitializeEmotionTagsImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeEmotionTagsImpl implements _InitializeEmotionTags {
  const _$InitializeEmotionTagsImpl();

  @override
  String toString() {
    return 'S3ObjectEvent.initializeEmotionTags()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeEmotionTagsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return initializeEmotionTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return initializeEmotionTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (initializeEmotionTags != null) {
      return initializeEmotionTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return initializeEmotionTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return initializeEmotionTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (initializeEmotionTags != null) {
      return initializeEmotionTags(this);
    }
    return orElse();
  }
}

abstract class _InitializeEmotionTags implements S3ObjectEvent {
  const factory _InitializeEmotionTags() = _$InitializeEmotionTagsImpl;
}

/// @nodoc
abstract class _$$HideToggleS3ObjectImplCopyWith<$Res> {
  factory _$$HideToggleS3ObjectImplCopyWith(_$HideToggleS3ObjectImpl value,
          $Res Function(_$HideToggleS3ObjectImpl) then) =
      __$$HideToggleS3ObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({S3Object s3Object, User user});

  $S3ObjectCopyWith<$Res> get s3Object;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$HideToggleS3ObjectImplCopyWithImpl<$Res>
    extends _$S3ObjectEventCopyWithImpl<$Res, _$HideToggleS3ObjectImpl>
    implements _$$HideToggleS3ObjectImplCopyWith<$Res> {
  __$$HideToggleS3ObjectImplCopyWithImpl(_$HideToggleS3ObjectImpl _value,
      $Res Function(_$HideToggleS3ObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Object = null,
    Object? user = null,
  }) {
    return _then(_$HideToggleS3ObjectImpl(
      null == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res> get s3Object {
    return $S3ObjectCopyWith<$Res>(_value.s3Object, (value) {
      return _then(_value.copyWith(s3Object: value));
    });
  }

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$HideToggleS3ObjectImpl implements _HideToggleS3Object {
  const _$HideToggleS3ObjectImpl(this.s3Object, this.user);

  @override
  final S3Object s3Object;
  @override
  final User user;

  @override
  String toString() {
    return 'S3ObjectEvent.hideToggleS3Object(s3Object: $s3Object, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideToggleS3ObjectImpl &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s3Object, user);

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HideToggleS3ObjectImplCopyWith<_$HideToggleS3ObjectImpl> get copyWith =>
      __$$HideToggleS3ObjectImplCopyWithImpl<_$HideToggleS3ObjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int skip, int take, List<S3ObjectTag>? tags)
        getS3Objects,
    required TResult Function() clearError,
    required TResult Function(File file, User user) uploadFile,
    required TResult Function(List<File> files, User user) uploadFiles,
    required TResult Function(S3Object s3Object, User user) deleteFile,
    required TResult Function(String id, User user) findOneOrFail,
    required TResult Function() count,
    required TResult Function(String year, String month)
        checkObjectsExistenceByMonth,
    required TResult Function(
            String year, String month, String day, int? skip, int? take)
        getObjectsByDate,
    required TResult Function(S3Object s3Object, User user) likeS3Object,
    required TResult Function(S3ObjectLike s3ObjectLike, User user)
        removeLikeS3Object,
    required TResult Function(S3Object s3Object, User user, String content)
        replyS3Object,
    required TResult Function(S3ObjectReply s3ObjectReply, User user)
        removeReplyS3Object,
    required TResult Function(
            S3Object s3Object, ReportReason type, String? content)
        reportS3Object,
    required TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)
        reportS3ObjectReply,
    required TResult Function(S3Object s3Object) getS3ObjectSurround,
    required TResult Function() clearUploadError,
    required TResult Function() initializeEmotionTags,
    required TResult Function(S3Object s3Object, User user) hideToggleS3Object,
  }) {
    return hideToggleS3Object(s3Object, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(int skip, int take, List<S3ObjectTag>? tags)?
        getS3Objects,
    TResult? Function()? clearError,
    TResult? Function(File file, User user)? uploadFile,
    TResult? Function(List<File> files, User user)? uploadFiles,
    TResult? Function(S3Object s3Object, User user)? deleteFile,
    TResult? Function(String id, User user)? findOneOrFail,
    TResult? Function()? count,
    TResult? Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult? Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult? Function(S3Object s3Object, User user)? likeS3Object,
    TResult? Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult? Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult? Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult? Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult? Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult? Function(S3Object s3Object)? getS3ObjectSurround,
    TResult? Function()? clearUploadError,
    TResult? Function()? initializeEmotionTags,
    TResult? Function(S3Object s3Object, User user)? hideToggleS3Object,
  }) {
    return hideToggleS3Object?.call(s3Object, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int skip, int take, List<S3ObjectTag>? tags)? getS3Objects,
    TResult Function()? clearError,
    TResult Function(File file, User user)? uploadFile,
    TResult Function(List<File> files, User user)? uploadFiles,
    TResult Function(S3Object s3Object, User user)? deleteFile,
    TResult Function(String id, User user)? findOneOrFail,
    TResult Function()? count,
    TResult Function(String year, String month)? checkObjectsExistenceByMonth,
    TResult Function(
            String year, String month, String day, int? skip, int? take)?
        getObjectsByDate,
    TResult Function(S3Object s3Object, User user)? likeS3Object,
    TResult Function(S3ObjectLike s3ObjectLike, User user)? removeLikeS3Object,
    TResult Function(S3Object s3Object, User user, String content)?
        replyS3Object,
    TResult Function(S3ObjectReply s3ObjectReply, User user)?
        removeReplyS3Object,
    TResult Function(S3Object s3Object, ReportReason type, String? content)?
        reportS3Object,
    TResult Function(
            S3ObjectReply s3ObjectReply, ReportReason type, String? content)?
        reportS3ObjectReply,
    TResult Function(S3Object s3Object)? getS3ObjectSurround,
    TResult Function()? clearUploadError,
    TResult Function()? initializeEmotionTags,
    TResult Function(S3Object s3Object, User user)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (hideToggleS3Object != null) {
      return hideToggleS3Object(s3Object, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetS3Objects value) getS3Objects,
    required TResult Function(_ClearError value) clearError,
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_UploadFiles value) uploadFiles,
    required TResult Function(_DeleteFile value) deleteFile,
    required TResult Function(_FindOneOrFail value) findOneOrFail,
    required TResult Function(_Count value) count,
    required TResult Function(_CheckObjectsExistenceByMonth value)
        checkObjectsExistenceByMonth,
    required TResult Function(_GetObjectsByDate value) getObjectsByDate,
    required TResult Function(_LikeS3Object value) likeS3Object,
    required TResult Function(_RemoveLikeS3Object value) removeLikeS3Object,
    required TResult Function(_ReplyS3Object value) replyS3Object,
    required TResult Function(_RemoveReplyS3Object value) removeReplyS3Object,
    required TResult Function(_ReportS3Object value) reportS3Object,
    required TResult Function(_ReportS3ObjectReply value) reportS3ObjectReply,
    required TResult Function(_GetS3ObjectSurround value) getS3ObjectSurround,
    required TResult Function(_ClearUploadError value) clearUploadError,
    required TResult Function(_InitializeEmotionTags value)
        initializeEmotionTags,
    required TResult Function(_HideToggleS3Object value) hideToggleS3Object,
  }) {
    return hideToggleS3Object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetS3Objects value)? getS3Objects,
    TResult? Function(_ClearError value)? clearError,
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_UploadFiles value)? uploadFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
    TResult? Function(_FindOneOrFail value)? findOneOrFail,
    TResult? Function(_Count value)? count,
    TResult? Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult? Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult? Function(_LikeS3Object value)? likeS3Object,
    TResult? Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult? Function(_ReplyS3Object value)? replyS3Object,
    TResult? Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult? Function(_ReportS3Object value)? reportS3Object,
    TResult? Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult? Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult? Function(_ClearUploadError value)? clearUploadError,
    TResult? Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult? Function(_HideToggleS3Object value)? hideToggleS3Object,
  }) {
    return hideToggleS3Object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetS3Objects value)? getS3Objects,
    TResult Function(_ClearError value)? clearError,
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_UploadFiles value)? uploadFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    TResult Function(_FindOneOrFail value)? findOneOrFail,
    TResult Function(_Count value)? count,
    TResult Function(_CheckObjectsExistenceByMonth value)?
        checkObjectsExistenceByMonth,
    TResult Function(_GetObjectsByDate value)? getObjectsByDate,
    TResult Function(_LikeS3Object value)? likeS3Object,
    TResult Function(_RemoveLikeS3Object value)? removeLikeS3Object,
    TResult Function(_ReplyS3Object value)? replyS3Object,
    TResult Function(_RemoveReplyS3Object value)? removeReplyS3Object,
    TResult Function(_ReportS3Object value)? reportS3Object,
    TResult Function(_ReportS3ObjectReply value)? reportS3ObjectReply,
    TResult Function(_GetS3ObjectSurround value)? getS3ObjectSurround,
    TResult Function(_ClearUploadError value)? clearUploadError,
    TResult Function(_InitializeEmotionTags value)? initializeEmotionTags,
    TResult Function(_HideToggleS3Object value)? hideToggleS3Object,
    required TResult orElse(),
  }) {
    if (hideToggleS3Object != null) {
      return hideToggleS3Object(this);
    }
    return orElse();
  }
}

abstract class _HideToggleS3Object implements S3ObjectEvent {
  const factory _HideToggleS3Object(final S3Object s3Object, final User user) =
      _$HideToggleS3ObjectImpl;

  S3Object get s3Object;
  User get user;

  /// Create a copy of S3ObjectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HideToggleS3ObjectImplCopyWith<_$HideToggleS3ObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

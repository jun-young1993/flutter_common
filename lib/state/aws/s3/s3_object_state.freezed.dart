// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$S3ObjectState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUploading => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  List<S3Object> get s3Objects => throw _privateConstructorUsedError;
  S3Object? get s3Object => throw _privateConstructorUsedError;
  int get allCount => throw _privateConstructorUsedError;
  bool get isAllCountLoading => throw _privateConstructorUsedError;
  Map<String, bool> get objectsExistenceByMonth =>
      throw _privateConstructorUsedError;
  bool get isObjectsExistenceByMonthLoading =>
      throw _privateConstructorUsedError;
  List<S3Object> get objectsByDate => throw _privateConstructorUsedError;
  bool get isObjectsByDateLoading => throw _privateConstructorUsedError;
  S3ObjectLike? get like => throw _privateConstructorUsedError;
  S3ObjectSurround? get s3ObjectSurround => throw _privateConstructorUsedError;
  bool get isS3ObjectSurroundLoading => throw _privateConstructorUsedError;
  AppException? get uploadError => throw _privateConstructorUsedError;
  List<File> get isUploadingFiles => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectStateCopyWith<S3ObjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectStateCopyWith<$Res> {
  factory $S3ObjectStateCopyWith(
          S3ObjectState value, $Res Function(S3ObjectState) then) =
      _$S3ObjectStateCopyWithImpl<$Res, S3ObjectState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUploading,
      bool isDeleting,
      AppException? error,
      List<S3Object> s3Objects,
      S3Object? s3Object,
      int allCount,
      bool isAllCountLoading,
      Map<String, bool> objectsExistenceByMonth,
      bool isObjectsExistenceByMonthLoading,
      List<S3Object> objectsByDate,
      bool isObjectsByDateLoading,
      S3ObjectLike? like,
      S3ObjectSurround? s3ObjectSurround,
      bool isS3ObjectSurroundLoading,
      AppException? uploadError,
      List<File> isUploadingFiles});

  $AppExceptionCopyWith<$Res>? get error;
  $S3ObjectCopyWith<$Res>? get s3Object;
  $S3ObjectLikeCopyWith<$Res>? get like;
  $S3ObjectSurroundCopyWith<$Res>? get s3ObjectSurround;
  $AppExceptionCopyWith<$Res>? get uploadError;
}

/// @nodoc
class _$S3ObjectStateCopyWithImpl<$Res, $Val extends S3ObjectState>
    implements $S3ObjectStateCopyWith<$Res> {
  _$S3ObjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUploading = null,
    Object? isDeleting = null,
    Object? error = freezed,
    Object? s3Objects = null,
    Object? s3Object = freezed,
    Object? allCount = null,
    Object? isAllCountLoading = null,
    Object? objectsExistenceByMonth = null,
    Object? isObjectsExistenceByMonthLoading = null,
    Object? objectsByDate = null,
    Object? isObjectsByDateLoading = null,
    Object? like = freezed,
    Object? s3ObjectSurround = freezed,
    Object? isS3ObjectSurroundLoading = null,
    Object? uploadError = freezed,
    Object? isUploadingFiles = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploading: null == isUploading
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      s3Objects: null == s3Objects
          ? _value.s3Objects
          : s3Objects // ignore: cast_nullable_to_non_nullable
              as List<S3Object>,
      s3Object: freezed == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object?,
      allCount: null == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAllCountLoading: null == isAllCountLoading
          ? _value.isAllCountLoading
          : isAllCountLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      objectsExistenceByMonth: null == objectsExistenceByMonth
          ? _value.objectsExistenceByMonth
          : objectsExistenceByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isObjectsExistenceByMonthLoading: null == isObjectsExistenceByMonthLoading
          ? _value.isObjectsExistenceByMonthLoading
          : isObjectsExistenceByMonthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      objectsByDate: null == objectsByDate
          ? _value.objectsByDate
          : objectsByDate // ignore: cast_nullable_to_non_nullable
              as List<S3Object>,
      isObjectsByDateLoading: null == isObjectsByDateLoading
          ? _value.isObjectsByDateLoading
          : isObjectsByDateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as S3ObjectLike?,
      s3ObjectSurround: freezed == s3ObjectSurround
          ? _value.s3ObjectSurround
          : s3ObjectSurround // ignore: cast_nullable_to_non_nullable
              as S3ObjectSurround?,
      isS3ObjectSurroundLoading: null == isS3ObjectSurroundLoading
          ? _value.isS3ObjectSurroundLoading
          : isS3ObjectSurroundLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadError: freezed == uploadError
          ? _value.uploadError
          : uploadError // ignore: cast_nullable_to_non_nullable
              as AppException?,
      isUploadingFiles: null == isUploadingFiles
          ? _value.isUploadingFiles
          : isUploadingFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ) as $Val);
  }

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectCopyWith<$Res>? get s3Object {
    if (_value.s3Object == null) {
      return null;
    }

    return $S3ObjectCopyWith<$Res>(_value.s3Object!, (value) {
      return _then(_value.copyWith(s3Object: value) as $Val);
    });
  }

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectLikeCopyWith<$Res>? get like {
    if (_value.like == null) {
      return null;
    }

    return $S3ObjectLikeCopyWith<$Res>(_value.like!, (value) {
      return _then(_value.copyWith(like: value) as $Val);
    });
  }

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ObjectSurroundCopyWith<$Res>? get s3ObjectSurround {
    if (_value.s3ObjectSurround == null) {
      return null;
    }

    return $S3ObjectSurroundCopyWith<$Res>(_value.s3ObjectSurround!, (value) {
      return _then(_value.copyWith(s3ObjectSurround: value) as $Val);
    });
  }

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get uploadError {
    if (_value.uploadError == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(_value.uploadError!, (value) {
      return _then(_value.copyWith(uploadError: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$S3ObjectStateImplCopyWith<$Res>
    implements $S3ObjectStateCopyWith<$Res> {
  factory _$$S3ObjectStateImplCopyWith(
          _$S3ObjectStateImpl value, $Res Function(_$S3ObjectStateImpl) then) =
      __$$S3ObjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUploading,
      bool isDeleting,
      AppException? error,
      List<S3Object> s3Objects,
      S3Object? s3Object,
      int allCount,
      bool isAllCountLoading,
      Map<String, bool> objectsExistenceByMonth,
      bool isObjectsExistenceByMonthLoading,
      List<S3Object> objectsByDate,
      bool isObjectsByDateLoading,
      S3ObjectLike? like,
      S3ObjectSurround? s3ObjectSurround,
      bool isS3ObjectSurroundLoading,
      AppException? uploadError,
      List<File> isUploadingFiles});

  @override
  $AppExceptionCopyWith<$Res>? get error;
  @override
  $S3ObjectCopyWith<$Res>? get s3Object;
  @override
  $S3ObjectLikeCopyWith<$Res>? get like;
  @override
  $S3ObjectSurroundCopyWith<$Res>? get s3ObjectSurround;
  @override
  $AppExceptionCopyWith<$Res>? get uploadError;
}

/// @nodoc
class __$$S3ObjectStateImplCopyWithImpl<$Res>
    extends _$S3ObjectStateCopyWithImpl<$Res, _$S3ObjectStateImpl>
    implements _$$S3ObjectStateImplCopyWith<$Res> {
  __$$S3ObjectStateImplCopyWithImpl(
      _$S3ObjectStateImpl _value, $Res Function(_$S3ObjectStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUploading = null,
    Object? isDeleting = null,
    Object? error = freezed,
    Object? s3Objects = null,
    Object? s3Object = freezed,
    Object? allCount = null,
    Object? isAllCountLoading = null,
    Object? objectsExistenceByMonth = null,
    Object? isObjectsExistenceByMonthLoading = null,
    Object? objectsByDate = null,
    Object? isObjectsByDateLoading = null,
    Object? like = freezed,
    Object? s3ObjectSurround = freezed,
    Object? isS3ObjectSurroundLoading = null,
    Object? uploadError = freezed,
    Object? isUploadingFiles = null,
  }) {
    return _then(_$S3ObjectStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploading: null == isUploading
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      s3Objects: null == s3Objects
          ? _value._s3Objects
          : s3Objects // ignore: cast_nullable_to_non_nullable
              as List<S3Object>,
      s3Object: freezed == s3Object
          ? _value.s3Object
          : s3Object // ignore: cast_nullable_to_non_nullable
              as S3Object?,
      allCount: null == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAllCountLoading: null == isAllCountLoading
          ? _value.isAllCountLoading
          : isAllCountLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      objectsExistenceByMonth: null == objectsExistenceByMonth
          ? _value._objectsExistenceByMonth
          : objectsExistenceByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isObjectsExistenceByMonthLoading: null == isObjectsExistenceByMonthLoading
          ? _value.isObjectsExistenceByMonthLoading
          : isObjectsExistenceByMonthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      objectsByDate: null == objectsByDate
          ? _value._objectsByDate
          : objectsByDate // ignore: cast_nullable_to_non_nullable
              as List<S3Object>,
      isObjectsByDateLoading: null == isObjectsByDateLoading
          ? _value.isObjectsByDateLoading
          : isObjectsByDateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as S3ObjectLike?,
      s3ObjectSurround: freezed == s3ObjectSurround
          ? _value.s3ObjectSurround
          : s3ObjectSurround // ignore: cast_nullable_to_non_nullable
              as S3ObjectSurround?,
      isS3ObjectSurroundLoading: null == isS3ObjectSurroundLoading
          ? _value.isS3ObjectSurroundLoading
          : isS3ObjectSurroundLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadError: freezed == uploadError
          ? _value.uploadError
          : uploadError // ignore: cast_nullable_to_non_nullable
              as AppException?,
      isUploadingFiles: null == isUploadingFiles
          ? _value._isUploadingFiles
          : isUploadingFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$S3ObjectStateImpl extends _S3ObjectState {
  const _$S3ObjectStateImpl(
      {this.isLoading = false,
      this.isUploading = false,
      this.isDeleting = false,
      this.error = null,
      final List<S3Object> s3Objects = const [],
      this.s3Object = null,
      this.allCount = 0,
      this.isAllCountLoading = false,
      final Map<String, bool> objectsExistenceByMonth = const {},
      this.isObjectsExistenceByMonthLoading = false,
      final List<S3Object> objectsByDate = const [],
      this.isObjectsByDateLoading = false,
      this.like = null,
      this.s3ObjectSurround = null,
      this.isS3ObjectSurroundLoading = false,
      this.uploadError = null,
      final List<File> isUploadingFiles = const []})
      : _s3Objects = s3Objects,
        _objectsExistenceByMonth = objectsExistenceByMonth,
        _objectsByDate = objectsByDate,
        _isUploadingFiles = isUploadingFiles,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isUploading;
  @override
  @JsonKey()
  final bool isDeleting;
  @override
  @JsonKey()
  final AppException? error;
  final List<S3Object> _s3Objects;
  @override
  @JsonKey()
  List<S3Object> get s3Objects {
    if (_s3Objects is EqualUnmodifiableListView) return _s3Objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_s3Objects);
  }

  @override
  @JsonKey()
  final S3Object? s3Object;
  @override
  @JsonKey()
  final int allCount;
  @override
  @JsonKey()
  final bool isAllCountLoading;
  final Map<String, bool> _objectsExistenceByMonth;
  @override
  @JsonKey()
  Map<String, bool> get objectsExistenceByMonth {
    if (_objectsExistenceByMonth is EqualUnmodifiableMapView)
      return _objectsExistenceByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objectsExistenceByMonth);
  }

  @override
  @JsonKey()
  final bool isObjectsExistenceByMonthLoading;
  final List<S3Object> _objectsByDate;
  @override
  @JsonKey()
  List<S3Object> get objectsByDate {
    if (_objectsByDate is EqualUnmodifiableListView) return _objectsByDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objectsByDate);
  }

  @override
  @JsonKey()
  final bool isObjectsByDateLoading;
  @override
  @JsonKey()
  final S3ObjectLike? like;
  @override
  @JsonKey()
  final S3ObjectSurround? s3ObjectSurround;
  @override
  @JsonKey()
  final bool isS3ObjectSurroundLoading;
  @override
  @JsonKey()
  final AppException? uploadError;
  final List<File> _isUploadingFiles;
  @override
  @JsonKey()
  List<File> get isUploadingFiles {
    if (_isUploadingFiles is EqualUnmodifiableListView)
      return _isUploadingFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isUploadingFiles);
  }

  @override
  String toString() {
    return 'S3ObjectState(isLoading: $isLoading, isUploading: $isUploading, isDeleting: $isDeleting, error: $error, s3Objects: $s3Objects, s3Object: $s3Object, allCount: $allCount, isAllCountLoading: $isAllCountLoading, objectsExistenceByMonth: $objectsExistenceByMonth, isObjectsExistenceByMonthLoading: $isObjectsExistenceByMonthLoading, objectsByDate: $objectsByDate, isObjectsByDateLoading: $isObjectsByDateLoading, like: $like, s3ObjectSurround: $s3ObjectSurround, isS3ObjectSurroundLoading: $isS3ObjectSurroundLoading, uploadError: $uploadError, isUploadingFiles: $isUploadingFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUploading, isUploading) ||
                other.isUploading == isUploading) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._s3Objects, _s3Objects) &&
            (identical(other.s3Object, s3Object) ||
                other.s3Object == s3Object) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            (identical(other.isAllCountLoading, isAllCountLoading) ||
                other.isAllCountLoading == isAllCountLoading) &&
            const DeepCollectionEquality().equals(
                other._objectsExistenceByMonth, _objectsExistenceByMonth) &&
            (identical(other.isObjectsExistenceByMonthLoading,
                    isObjectsExistenceByMonthLoading) ||
                other.isObjectsExistenceByMonthLoading ==
                    isObjectsExistenceByMonthLoading) &&
            const DeepCollectionEquality()
                .equals(other._objectsByDate, _objectsByDate) &&
            (identical(other.isObjectsByDateLoading, isObjectsByDateLoading) ||
                other.isObjectsByDateLoading == isObjectsByDateLoading) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.s3ObjectSurround, s3ObjectSurround) ||
                other.s3ObjectSurround == s3ObjectSurround) &&
            (identical(other.isS3ObjectSurroundLoading,
                    isS3ObjectSurroundLoading) ||
                other.isS3ObjectSurroundLoading == isS3ObjectSurroundLoading) &&
            (identical(other.uploadError, uploadError) ||
                other.uploadError == uploadError) &&
            const DeepCollectionEquality()
                .equals(other._isUploadingFiles, _isUploadingFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isUploading,
      isDeleting,
      error,
      const DeepCollectionEquality().hash(_s3Objects),
      s3Object,
      allCount,
      isAllCountLoading,
      const DeepCollectionEquality().hash(_objectsExistenceByMonth),
      isObjectsExistenceByMonthLoading,
      const DeepCollectionEquality().hash(_objectsByDate),
      isObjectsByDateLoading,
      like,
      s3ObjectSurround,
      isS3ObjectSurroundLoading,
      uploadError,
      const DeepCollectionEquality().hash(_isUploadingFiles));

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectStateImplCopyWith<_$S3ObjectStateImpl> get copyWith =>
      __$$S3ObjectStateImplCopyWithImpl<_$S3ObjectStateImpl>(this, _$identity);
}

abstract class _S3ObjectState extends S3ObjectState {
  const factory _S3ObjectState(
      {final bool isLoading,
      final bool isUploading,
      final bool isDeleting,
      final AppException? error,
      final List<S3Object> s3Objects,
      final S3Object? s3Object,
      final int allCount,
      final bool isAllCountLoading,
      final Map<String, bool> objectsExistenceByMonth,
      final bool isObjectsExistenceByMonthLoading,
      final List<S3Object> objectsByDate,
      final bool isObjectsByDateLoading,
      final S3ObjectLike? like,
      final S3ObjectSurround? s3ObjectSurround,
      final bool isS3ObjectSurroundLoading,
      final AppException? uploadError,
      final List<File> isUploadingFiles}) = _$S3ObjectStateImpl;
  const _S3ObjectState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isUploading;
  @override
  bool get isDeleting;
  @override
  AppException? get error;
  @override
  List<S3Object> get s3Objects;
  @override
  S3Object? get s3Object;
  @override
  int get allCount;
  @override
  bool get isAllCountLoading;
  @override
  Map<String, bool> get objectsExistenceByMonth;
  @override
  bool get isObjectsExistenceByMonthLoading;
  @override
  List<S3Object> get objectsByDate;
  @override
  bool get isObjectsByDateLoading;
  @override
  S3ObjectLike? get like;
  @override
  S3ObjectSurround? get s3ObjectSurround;
  @override
  bool get isS3ObjectSurroundLoading;
  @override
  AppException? get uploadError;
  @override
  List<File> get isUploadingFiles;

  /// Create a copy of S3ObjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectStateImplCopyWith<_$S3ObjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

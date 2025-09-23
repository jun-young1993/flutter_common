// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeEventCopyWith<$Res> {
  factory $NoticeEventCopyWith(
          NoticeEvent value, $Res Function(NoticeEvent) then) =
      _$NoticeEventCopyWithImpl<$Res, NoticeEvent>;
}

/// @nodoc
class _$NoticeEventCopyWithImpl<$Res, $Val extends NoticeEvent>
    implements $NoticeEventCopyWith<$Res> {
  _$NoticeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FindAllImplCopyWith<$Res> {
  factory _$$FindAllImplCopyWith(
          _$FindAllImpl value, $Res Function(_$FindAllImpl) then) =
      __$$FindAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$FindAllImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$FindAllImpl>
    implements _$$FindAllImplCopyWith<$Res> {
  __$$FindAllImplCopyWithImpl(
      _$FindAllImpl _value, $Res Function(_$FindAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$FindAllImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindAllImpl implements FindAll {
  const _$FindAllImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeEvent.findAll(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindAllImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindAllImplCopyWith<_$FindAllImpl> get copyWith =>
      __$$FindAllImplCopyWithImpl<_$FindAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return findAll(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return findAll?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class FindAll implements NoticeEvent {
  const factory FindAll(final String name) = _$FindAllImpl;

  String get name;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindAllImplCopyWith<_$FindAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSkipImplCopyWith<$Res> {
  factory _$$AddSkipImplCopyWith(
          _$AddSkipImpl value, $Res Function(_$AddSkipImpl) then) =
      __$$AddSkipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddSkipImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$AddSkipImpl>
    implements _$$AddSkipImplCopyWith<$Res> {
  __$$AddSkipImplCopyWithImpl(
      _$AddSkipImpl _value, $Res Function(_$AddSkipImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddSkipImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSkipImpl implements AddSkip {
  const _$AddSkipImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'NoticeEvent.addSkip(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSkipImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSkipImplCopyWith<_$AddSkipImpl> get copyWith =>
      __$$AddSkipImplCopyWithImpl<_$AddSkipImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return addSkip(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return addSkip?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (addSkip != null) {
      return addSkip(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return addSkip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return addSkip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (addSkip != null) {
      return addSkip(this);
    }
    return orElse();
  }
}

abstract class AddSkip implements NoticeEvent {
  const factory AddSkip(final String name) = _$AddSkipImpl;

  String get name;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSkipImplCopyWith<_$AddSkipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String content,
      String type,
      String noticeGroupId,
      String userId});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? noticeGroupId = null,
    Object? userId = null,
  }) {
    return _then(_$CreateImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == noticeGroupId
          ? _value.noticeGroupId
          : noticeGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements Create {
  const _$CreateImpl(
      this.title, this.content, this.type, this.noticeGroupId, this.userId);

  @override
  final String title;
  @override
  final String content;
  @override
  final String type;
  @override
  final String noticeGroupId;
  @override
  final String userId;

  @override
  String toString() {
    return 'NoticeEvent.create(title: $title, content: $content, type: $type, noticeGroupId: $noticeGroupId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.noticeGroupId, noticeGroupId) ||
                other.noticeGroupId == noticeGroupId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, content, type, noticeGroupId, userId);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return create(title, content, type, noticeGroupId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return create?.call(title, content, type, noticeGroupId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(title, content, type, noticeGroupId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements NoticeEvent {
  const factory Create(
      final String title,
      final String content,
      final String type,
      final String noticeGroupId,
      final String userId) = _$CreateImpl;

  String get title;
  String get content;
  String get type;
  String get noticeGroupId;
  String get userId;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String noticeId, String reporterId, String type, String? comment});
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
    Object? reporterId = null,
    Object? type = null,
    Object? comment = freezed,
  }) {
    return _then(_$ReportImpl(
      null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
      null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReportImpl implements Report {
  const _$ReportImpl(this.noticeId, this.reporterId, this.type, this.comment);

  @override
  final String noticeId;
  @override
  final String reporterId;
  @override
  final String type;
  @override
  final String? comment;

  @override
  String toString() {
    return 'NoticeEvent.report(noticeId: $noticeId, reporterId: $reporterId, type: $type, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId) &&
            (identical(other.reporterId, reporterId) ||
                other.reporterId == reporterId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, noticeId, reporterId, type, comment);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return report(noticeId, reporterId, type, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return report?.call(noticeId, reporterId, type, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (report != null) {
      return report(noticeId, reporterId, type, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return report(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return report?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (report != null) {
      return report(this);
    }
    return orElse();
  }
}

abstract class Report implements NoticeEvent {
  const factory Report(final String noticeId, final String reporterId,
      final String type, final String? comment) = _$ReportImpl;

  String get noticeId;
  String get reporterId;
  String get type;
  String? get comment;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSuccessMessageImplCopyWith<$Res> {
  factory _$$RemoveSuccessMessageImplCopyWith(_$RemoveSuccessMessageImpl value,
          $Res Function(_$RemoveSuccessMessageImpl) then) =
      __$$RemoveSuccessMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveSuccessMessageImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$RemoveSuccessMessageImpl>
    implements _$$RemoveSuccessMessageImplCopyWith<$Res> {
  __$$RemoveSuccessMessageImplCopyWithImpl(_$RemoveSuccessMessageImpl _value,
      $Res Function(_$RemoveSuccessMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveSuccessMessageImpl implements RemoveSuccessMessage {
  const _$RemoveSuccessMessageImpl();

  @override
  String toString() {
    return 'NoticeEvent.removeSuccessMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSuccessMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return removeSuccessMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return removeSuccessMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (removeSuccessMessage != null) {
      return removeSuccessMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return removeSuccessMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return removeSuccessMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (removeSuccessMessage != null) {
      return removeSuccessMessage(this);
    }
    return orElse();
  }
}

abstract class RemoveSuccessMessage implements NoticeEvent {
  const factory RemoveSuccessMessage() = _$RemoveSuccessMessageImpl;
}

/// @nodoc
abstract class _$$FindOneByIdImplCopyWith<$Res> {
  factory _$$FindOneByIdImplCopyWith(
          _$FindOneByIdImpl value, $Res Function(_$FindOneByIdImpl) then) =
      __$$FindOneByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String? userId});
}

/// @nodoc
class __$$FindOneByIdImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$FindOneByIdImpl>
    implements _$$FindOneByIdImplCopyWith<$Res> {
  __$$FindOneByIdImplCopyWithImpl(
      _$FindOneByIdImpl _value, $Res Function(_$FindOneByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
  }) {
    return _then(_$FindOneByIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FindOneByIdImpl implements FindOneById {
  const _$FindOneByIdImpl(this.id, this.userId);

  @override
  final String id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'NoticeEvent.findOneById(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindOneByIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindOneByIdImplCopyWith<_$FindOneByIdImpl> get copyWith =>
      __$$FindOneByIdImplCopyWithImpl<_$FindOneByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return findOneById(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return findOneById?.call(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (findOneById != null) {
      return findOneById(id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return findOneById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return findOneById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (findOneById != null) {
      return findOneById(this);
    }
    return orElse();
  }
}

abstract class FindOneById implements NoticeEvent {
  const factory FindOneById(final String id, final String? userId) =
      _$FindOneByIdImpl;

  String get id;
  String? get userId;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindOneByIdImplCopyWith<_$FindOneByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckNoticeExistenceImplCopyWith<$Res> {
  factory _$$CheckNoticeExistenceImplCopyWith(_$CheckNoticeExistenceImpl value,
          $Res Function(_$CheckNoticeExistenceImpl) then) =
      __$$CheckNoticeExistenceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String year, String month});
}

/// @nodoc
class __$$CheckNoticeExistenceImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$CheckNoticeExistenceImpl>
    implements _$$CheckNoticeExistenceImplCopyWith<$Res> {
  __$$CheckNoticeExistenceImplCopyWithImpl(_$CheckNoticeExistenceImpl _value,
      $Res Function(_$CheckNoticeExistenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_$CheckNoticeExistenceImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$CheckNoticeExistenceImpl implements CheckNoticeExistence {
  const _$CheckNoticeExistenceImpl(this.name, this.year, this.month);

  @override
  final String name;
  @override
  final String year;
  @override
  final String month;

  @override
  String toString() {
    return 'NoticeEvent.checkNoticeExistence(name: $name, year: $year, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckNoticeExistenceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, year, month);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckNoticeExistenceImplCopyWith<_$CheckNoticeExistenceImpl>
      get copyWith =>
          __$$CheckNoticeExistenceImplCopyWithImpl<_$CheckNoticeExistenceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return checkNoticeExistence(name, year, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return checkNoticeExistence?.call(name, year, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (checkNoticeExistence != null) {
      return checkNoticeExistence(name, year, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return checkNoticeExistence(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return checkNoticeExistence?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (checkNoticeExistence != null) {
      return checkNoticeExistence(this);
    }
    return orElse();
  }
}

abstract class CheckNoticeExistence implements NoticeEvent {
  const factory CheckNoticeExistence(
          final String name, final String year, final String month) =
      _$CheckNoticeExistenceImpl;

  String get name;
  String get year;
  String get month;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckNoticeExistenceImplCopyWith<_$CheckNoticeExistenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FindAllByMonthImplCopyWith<$Res> {
  factory _$$FindAllByMonthImplCopyWith(_$FindAllByMonthImpl value,
          $Res Function(_$FindAllByMonthImpl) then) =
      __$$FindAllByMonthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String year, String month, String day});
}

/// @nodoc
class __$$FindAllByMonthImplCopyWithImpl<$Res>
    extends _$NoticeEventCopyWithImpl<$Res, _$FindAllByMonthImpl>
    implements _$$FindAllByMonthImplCopyWith<$Res> {
  __$$FindAllByMonthImplCopyWithImpl(
      _$FindAllByMonthImpl _value, $Res Function(_$FindAllByMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? year = null,
    Object? month = null,
    Object? day = null,
  }) {
    return _then(_$FindAllByMonthImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$FindAllByMonthImpl implements FindAllByMonth {
  const _$FindAllByMonthImpl(this.name, this.year, this.month, this.day);

  @override
  final String name;
  @override
  final String year;
  @override
  final String month;
  @override
  final String day;

  @override
  String toString() {
    return 'NoticeEvent.findAllByMonth(name: $name, year: $year, month: $month, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindAllByMonthImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, year, month, day);

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindAllByMonthImplCopyWith<_$FindAllByMonthImpl> get copyWith =>
      __$$FindAllByMonthImplCopyWithImpl<_$FindAllByMonthImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) findAll,
    required TResult Function(String name) addSkip,
    required TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)
        create,
    required TResult Function(
            String noticeId, String reporterId, String type, String? comment)
        report,
    required TResult Function() removeSuccessMessage,
    required TResult Function(String id, String? userId) findOneById,
    required TResult Function(String name, String year, String month)
        checkNoticeExistence,
    required TResult Function(
            String name, String year, String month, String day)
        findAllByMonth,
  }) {
    return findAllByMonth(name, year, month, day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? findAll,
    TResult? Function(String name)? addSkip,
    TResult? Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult? Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult? Function()? removeSuccessMessage,
    TResult? Function(String id, String? userId)? findOneById,
    TResult? Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult? Function(String name, String year, String month, String day)?
        findAllByMonth,
  }) {
    return findAllByMonth?.call(name, year, month, day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? findAll,
    TResult Function(String name)? addSkip,
    TResult Function(String title, String content, String type,
            String noticeGroupId, String userId)?
        create,
    TResult Function(
            String noticeId, String reporterId, String type, String? comment)?
        report,
    TResult Function()? removeSuccessMessage,
    TResult Function(String id, String? userId)? findOneById,
    TResult Function(String name, String year, String month)?
        checkNoticeExistence,
    TResult Function(String name, String year, String month, String day)?
        findAllByMonth,
    required TResult orElse(),
  }) {
    if (findAllByMonth != null) {
      return findAllByMonth(name, year, month, day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(Create value) create,
    required TResult Function(Report value) report,
    required TResult Function(RemoveSuccessMessage value) removeSuccessMessage,
    required TResult Function(FindOneById value) findOneById,
    required TResult Function(CheckNoticeExistence value) checkNoticeExistence,
    required TResult Function(FindAllByMonth value) findAllByMonth,
  }) {
    return findAllByMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(Create value)? create,
    TResult? Function(Report value)? report,
    TResult? Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult? Function(FindOneById value)? findOneById,
    TResult? Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult? Function(FindAllByMonth value)? findAllByMonth,
  }) {
    return findAllByMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(Create value)? create,
    TResult Function(Report value)? report,
    TResult Function(RemoveSuccessMessage value)? removeSuccessMessage,
    TResult Function(FindOneById value)? findOneById,
    TResult Function(CheckNoticeExistence value)? checkNoticeExistence,
    TResult Function(FindAllByMonth value)? findAllByMonth,
    required TResult orElse(),
  }) {
    if (findAllByMonth != null) {
      return findAllByMonth(this);
    }
    return orElse();
  }
}

abstract class FindAllByMonth implements NoticeEvent {
  const factory FindAllByMonth(final String name, final String year,
      final String month, final String day) = _$FindAllByMonthImpl;

  String get name;
  String get year;
  String get month;
  String get day;

  /// Create a copy of NoticeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindAllByMonthImplCopyWith<_$FindAllByMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  Notice? get notice => throw _privateConstructorUsedError;
  List<Notice>? get notices => throw _privateConstructorUsedError;
  int get skipCount => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isNoticeExistenceByMonthLoading =>
      throw _privateConstructorUsedError;
  Map<String, bool> get noticeExistenceByMonth =>
      throw _privateConstructorUsedError;
  List<Notice>? get noticesByDate => throw _privateConstructorUsedError;
  bool get isNoticesByDateLoading => throw _privateConstructorUsedError;

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeStateCopyWith<NoticeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeStateCopyWith<$Res> {
  factory $NoticeStateCopyWith(
          NoticeState value, $Res Function(NoticeState) then) =
      _$NoticeStateCopyWithImpl<$Res, NoticeState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      String? successMessage,
      Notice? notice,
      List<Notice>? notices,
      int skipCount,
      int take,
      bool hasMore,
      bool isNoticeExistenceByMonthLoading,
      Map<String, bool> noticeExistenceByMonth,
      List<Notice>? noticesByDate,
      bool isNoticesByDateLoading});

  $AppExceptionCopyWith<$Res>? get error;
  $NoticeCopyWith<$Res>? get notice;
}

/// @nodoc
class _$NoticeStateCopyWithImpl<$Res, $Val extends NoticeState>
    implements $NoticeStateCopyWith<$Res> {
  _$NoticeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? successMessage = freezed,
    Object? notice = freezed,
    Object? notices = freezed,
    Object? skipCount = null,
    Object? take = null,
    Object? hasMore = null,
    Object? isNoticeExistenceByMonthLoading = null,
    Object? noticeExistenceByMonth = null,
    Object? noticesByDate = freezed,
    Object? isNoticesByDateLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as Notice?,
      notices: freezed == notices
          ? _value.notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
      skipCount: null == skipCount
          ? _value.skipCount
          : skipCount // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoticeExistenceByMonthLoading: null == isNoticeExistenceByMonthLoading
          ? _value.isNoticeExistenceByMonthLoading
          : isNoticeExistenceByMonthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noticeExistenceByMonth: null == noticeExistenceByMonth
          ? _value.noticeExistenceByMonth
          : noticeExistenceByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      noticesByDate: freezed == noticesByDate
          ? _value.noticesByDate
          : noticesByDate // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
      isNoticesByDateLoading: null == isNoticesByDateLoading
          ? _value.isNoticesByDateLoading
          : isNoticesByDateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NoticeState
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

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeCopyWith<$Res>? get notice {
    if (_value.notice == null) {
      return null;
    }

    return $NoticeCopyWith<$Res>(_value.notice!, (value) {
      return _then(_value.copyWith(notice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoticeStateImplCopyWith<$Res>
    implements $NoticeStateCopyWith<$Res> {
  factory _$$NoticeStateImplCopyWith(
          _$NoticeStateImpl value, $Res Function(_$NoticeStateImpl) then) =
      __$$NoticeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      String? successMessage,
      Notice? notice,
      List<Notice>? notices,
      int skipCount,
      int take,
      bool hasMore,
      bool isNoticeExistenceByMonthLoading,
      Map<String, bool> noticeExistenceByMonth,
      List<Notice>? noticesByDate,
      bool isNoticesByDateLoading});

  @override
  $AppExceptionCopyWith<$Res>? get error;
  @override
  $NoticeCopyWith<$Res>? get notice;
}

/// @nodoc
class __$$NoticeStateImplCopyWithImpl<$Res>
    extends _$NoticeStateCopyWithImpl<$Res, _$NoticeStateImpl>
    implements _$$NoticeStateImplCopyWith<$Res> {
  __$$NoticeStateImplCopyWithImpl(
      _$NoticeStateImpl _value, $Res Function(_$NoticeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? successMessage = freezed,
    Object? notice = freezed,
    Object? notices = freezed,
    Object? skipCount = null,
    Object? take = null,
    Object? hasMore = null,
    Object? isNoticeExistenceByMonthLoading = null,
    Object? noticeExistenceByMonth = null,
    Object? noticesByDate = freezed,
    Object? isNoticesByDateLoading = null,
  }) {
    return _then(_$NoticeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as Notice?,
      notices: freezed == notices
          ? _value._notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
      skipCount: null == skipCount
          ? _value.skipCount
          : skipCount // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoticeExistenceByMonthLoading: null == isNoticeExistenceByMonthLoading
          ? _value.isNoticeExistenceByMonthLoading
          : isNoticeExistenceByMonthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noticeExistenceByMonth: null == noticeExistenceByMonth
          ? _value._noticeExistenceByMonth
          : noticeExistenceByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      noticesByDate: freezed == noticesByDate
          ? _value._noticesByDate
          : noticesByDate // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
      isNoticesByDateLoading: null == isNoticesByDateLoading
          ? _value.isNoticesByDateLoading
          : isNoticesByDateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NoticeStateImpl extends _NoticeState {
  const _$NoticeStateImpl(
      {this.isLoading = false,
      this.error = null,
      this.successMessage = null,
      this.notice = null,
      final List<Notice>? notices = const [],
      this.skipCount = 0,
      this.take = 10,
      this.hasMore = false,
      this.isNoticeExistenceByMonthLoading = false,
      final Map<String, bool> noticeExistenceByMonth = const {},
      final List<Notice>? noticesByDate = const [],
      this.isNoticesByDateLoading = false})
      : _notices = notices,
        _noticeExistenceByMonth = noticeExistenceByMonth,
        _noticesByDate = noticesByDate,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  @override
  @JsonKey()
  final String? successMessage;
  @override
  @JsonKey()
  final Notice? notice;
  final List<Notice>? _notices;
  @override
  @JsonKey()
  List<Notice>? get notices {
    final value = _notices;
    if (value == null) return null;
    if (_notices is EqualUnmodifiableListView) return _notices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int skipCount;
  @override
  @JsonKey()
  final int take;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final bool isNoticeExistenceByMonthLoading;
  final Map<String, bool> _noticeExistenceByMonth;
  @override
  @JsonKey()
  Map<String, bool> get noticeExistenceByMonth {
    if (_noticeExistenceByMonth is EqualUnmodifiableMapView)
      return _noticeExistenceByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_noticeExistenceByMonth);
  }

  final List<Notice>? _noticesByDate;
  @override
  @JsonKey()
  List<Notice>? get noticesByDate {
    final value = _noticesByDate;
    if (value == null) return null;
    if (_noticesByDate is EqualUnmodifiableListView) return _noticesByDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isNoticesByDateLoading;

  @override
  String toString() {
    return 'NoticeState(isLoading: $isLoading, error: $error, successMessage: $successMessage, notice: $notice, notices: $notices, skipCount: $skipCount, take: $take, hasMore: $hasMore, isNoticeExistenceByMonthLoading: $isNoticeExistenceByMonthLoading, noticeExistenceByMonth: $noticeExistenceByMonth, noticesByDate: $noticesByDate, isNoticesByDateLoading: $isNoticesByDateLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            const DeepCollectionEquality().equals(other._notices, _notices) &&
            (identical(other.skipCount, skipCount) ||
                other.skipCount == skipCount) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isNoticeExistenceByMonthLoading,
                    isNoticeExistenceByMonthLoading) ||
                other.isNoticeExistenceByMonthLoading ==
                    isNoticeExistenceByMonthLoading) &&
            const DeepCollectionEquality().equals(
                other._noticeExistenceByMonth, _noticeExistenceByMonth) &&
            const DeepCollectionEquality()
                .equals(other._noticesByDate, _noticesByDate) &&
            (identical(other.isNoticesByDateLoading, isNoticesByDateLoading) ||
                other.isNoticesByDateLoading == isNoticesByDateLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      successMessage,
      notice,
      const DeepCollectionEquality().hash(_notices),
      skipCount,
      take,
      hasMore,
      isNoticeExistenceByMonthLoading,
      const DeepCollectionEquality().hash(_noticeExistenceByMonth),
      const DeepCollectionEquality().hash(_noticesByDate),
      isNoticesByDateLoading);

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeStateImplCopyWith<_$NoticeStateImpl> get copyWith =>
      __$$NoticeStateImplCopyWithImpl<_$NoticeStateImpl>(this, _$identity);
}

abstract class _NoticeState extends NoticeState {
  const factory _NoticeState(
      {final bool isLoading,
      final AppException? error,
      final String? successMessage,
      final Notice? notice,
      final List<Notice>? notices,
      final int skipCount,
      final int take,
      final bool hasMore,
      final bool isNoticeExistenceByMonthLoading,
      final Map<String, bool> noticeExistenceByMonth,
      final List<Notice>? noticesByDate,
      final bool isNoticesByDateLoading}) = _$NoticeStateImpl;
  const _NoticeState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  String? get successMessage;
  @override
  Notice? get notice;
  @override
  List<Notice>? get notices;
  @override
  int get skipCount;
  @override
  int get take;
  @override
  bool get hasMore;
  @override
  bool get isNoticeExistenceByMonthLoading;
  @override
  Map<String, bool> get noticeExistenceByMonth;
  @override
  List<Notice>? get noticesByDate;
  @override
  bool get isNoticesByDateLoading;

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeStateImplCopyWith<_$NoticeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

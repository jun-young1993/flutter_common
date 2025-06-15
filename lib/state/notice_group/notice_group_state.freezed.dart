// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_group_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeGroupState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  NoticeGroup? get noticeGroup => throw _privateConstructorUsedError;

  /// Create a copy of NoticeGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeGroupStateCopyWith<NoticeGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeGroupStateCopyWith<$Res> {
  factory $NoticeGroupStateCopyWith(
          NoticeGroupState value, $Res Function(NoticeGroupState) then) =
      _$NoticeGroupStateCopyWithImpl<$Res, NoticeGroupState>;
  @useResult
  $Res call({bool isLoading, AppException? error, NoticeGroup? noticeGroup});

  $AppExceptionCopyWith<$Res>? get error;
  $NoticeGroupCopyWith<$Res>? get noticeGroup;
}

/// @nodoc
class _$NoticeGroupStateCopyWithImpl<$Res, $Val extends NoticeGroupState>
    implements $NoticeGroupStateCopyWith<$Res> {
  _$NoticeGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeGroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? noticeGroup = freezed,
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
      noticeGroup: freezed == noticeGroup
          ? _value.noticeGroup
          : noticeGroup // ignore: cast_nullable_to_non_nullable
              as NoticeGroup?,
    ) as $Val);
  }

  /// Create a copy of NoticeGroupState
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

  /// Create a copy of NoticeGroupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeGroupCopyWith<$Res>? get noticeGroup {
    if (_value.noticeGroup == null) {
      return null;
    }

    return $NoticeGroupCopyWith<$Res>(_value.noticeGroup!, (value) {
      return _then(_value.copyWith(noticeGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoticeGroupStateImplCopyWith<$Res>
    implements $NoticeGroupStateCopyWith<$Res> {
  factory _$$NoticeGroupStateImplCopyWith(_$NoticeGroupStateImpl value,
          $Res Function(_$NoticeGroupStateImpl) then) =
      __$$NoticeGroupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, AppException? error, NoticeGroup? noticeGroup});

  @override
  $AppExceptionCopyWith<$Res>? get error;
  @override
  $NoticeGroupCopyWith<$Res>? get noticeGroup;
}

/// @nodoc
class __$$NoticeGroupStateImplCopyWithImpl<$Res>
    extends _$NoticeGroupStateCopyWithImpl<$Res, _$NoticeGroupStateImpl>
    implements _$$NoticeGroupStateImplCopyWith<$Res> {
  __$$NoticeGroupStateImplCopyWithImpl(_$NoticeGroupStateImpl _value,
      $Res Function(_$NoticeGroupStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeGroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? noticeGroup = freezed,
  }) {
    return _then(_$NoticeGroupStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      noticeGroup: freezed == noticeGroup
          ? _value.noticeGroup
          : noticeGroup // ignore: cast_nullable_to_non_nullable
              as NoticeGroup?,
    ));
  }
}

/// @nodoc

class _$NoticeGroupStateImpl extends _NoticeGroupState {
  const _$NoticeGroupStateImpl(
      {this.isLoading = false, this.error = null, this.noticeGroup = null})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  @override
  @JsonKey()
  final NoticeGroup? noticeGroup;

  @override
  String toString() {
    return 'NoticeGroupState(isLoading: $isLoading, error: $error, noticeGroup: $noticeGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeGroupStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.noticeGroup, noticeGroup) ||
                other.noticeGroup == noticeGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, noticeGroup);

  /// Create a copy of NoticeGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeGroupStateImplCopyWith<_$NoticeGroupStateImpl> get copyWith =>
      __$$NoticeGroupStateImplCopyWithImpl<_$NoticeGroupStateImpl>(
          this, _$identity);
}

abstract class _NoticeGroupState extends NoticeGroupState {
  const factory _NoticeGroupState(
      {final bool isLoading,
      final AppException? error,
      final NoticeGroup? noticeGroup}) = _$NoticeGroupStateImpl;
  const _NoticeGroupState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  NoticeGroup? get noticeGroup;

  /// Create a copy of NoticeGroupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeGroupStateImplCopyWith<_$NoticeGroupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

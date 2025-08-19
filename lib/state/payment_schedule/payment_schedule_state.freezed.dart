// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentScheduleState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  List<PaymentSchedule>? get paymentSchedules =>
      throw _privateConstructorUsedError;
  int get skipCount => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of PaymentScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentScheduleStateCopyWith<PaymentScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentScheduleStateCopyWith<$Res> {
  factory $PaymentScheduleStateCopyWith(PaymentScheduleState value,
          $Res Function(PaymentScheduleState) then) =
      _$PaymentScheduleStateCopyWithImpl<$Res, PaymentScheduleState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      String? successMessage,
      List<PaymentSchedule>? paymentSchedules,
      int skipCount,
      int take,
      String order,
      bool hasMore});

  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$PaymentScheduleStateCopyWithImpl<$Res,
        $Val extends PaymentScheduleState>
    implements $PaymentScheduleStateCopyWith<$Res> {
  _$PaymentScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? successMessage = freezed,
    Object? paymentSchedules = freezed,
    Object? skipCount = null,
    Object? take = null,
    Object? order = null,
    Object? hasMore = null,
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
      paymentSchedules: freezed == paymentSchedules
          ? _value.paymentSchedules
          : paymentSchedules // ignore: cast_nullable_to_non_nullable
              as List<PaymentSchedule>?,
      skipCount: null == skipCount
          ? _value.skipCount
          : skipCount // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PaymentScheduleState
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
}

/// @nodoc
abstract class _$$PaymentScheduleStateImplCopyWith<$Res>
    implements $PaymentScheduleStateCopyWith<$Res> {
  factory _$$PaymentScheduleStateImplCopyWith(_$PaymentScheduleStateImpl value,
          $Res Function(_$PaymentScheduleStateImpl) then) =
      __$$PaymentScheduleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      String? successMessage,
      List<PaymentSchedule>? paymentSchedules,
      int skipCount,
      int take,
      String order,
      bool hasMore});

  @override
  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$PaymentScheduleStateImplCopyWithImpl<$Res>
    extends _$PaymentScheduleStateCopyWithImpl<$Res, _$PaymentScheduleStateImpl>
    implements _$$PaymentScheduleStateImplCopyWith<$Res> {
  __$$PaymentScheduleStateImplCopyWithImpl(_$PaymentScheduleStateImpl _value,
      $Res Function(_$PaymentScheduleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? successMessage = freezed,
    Object? paymentSchedules = freezed,
    Object? skipCount = null,
    Object? take = null,
    Object? order = null,
    Object? hasMore = null,
  }) {
    return _then(_$PaymentScheduleStateImpl(
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
      paymentSchedules: freezed == paymentSchedules
          ? _value._paymentSchedules
          : paymentSchedules // ignore: cast_nullable_to_non_nullable
              as List<PaymentSchedule>?,
      skipCount: null == skipCount
          ? _value.skipCount
          : skipCount // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentScheduleStateImpl extends _PaymentScheduleState {
  const _$PaymentScheduleStateImpl(
      {this.isLoading = false,
      this.error = null,
      this.successMessage = null,
      final List<PaymentSchedule>? paymentSchedules = null,
      this.skipCount = 0,
      this.take = 10,
      this.order = 'ASC',
      this.hasMore = false})
      : _paymentSchedules = paymentSchedules,
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
  final List<PaymentSchedule>? _paymentSchedules;
  @override
  @JsonKey()
  List<PaymentSchedule>? get paymentSchedules {
    final value = _paymentSchedules;
    if (value == null) return null;
    if (_paymentSchedules is EqualUnmodifiableListView)
      return _paymentSchedules;
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
  final String order;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'PaymentScheduleState(isLoading: $isLoading, error: $error, successMessage: $successMessage, paymentSchedules: $paymentSchedules, skipCount: $skipCount, take: $take, order: $order, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentScheduleStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            const DeepCollectionEquality()
                .equals(other._paymentSchedules, _paymentSchedules) &&
            (identical(other.skipCount, skipCount) ||
                other.skipCount == skipCount) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      successMessage,
      const DeepCollectionEquality().hash(_paymentSchedules),
      skipCount,
      take,
      order,
      hasMore);

  /// Create a copy of PaymentScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentScheduleStateImplCopyWith<_$PaymentScheduleStateImpl>
      get copyWith =>
          __$$PaymentScheduleStateImplCopyWithImpl<_$PaymentScheduleStateImpl>(
              this, _$identity);
}

abstract class _PaymentScheduleState extends PaymentScheduleState {
  const factory _PaymentScheduleState(
      {final bool isLoading,
      final AppException? error,
      final String? successMessage,
      final List<PaymentSchedule>? paymentSchedules,
      final int skipCount,
      final int take,
      final String order,
      final bool hasMore}) = _$PaymentScheduleStateImpl;
  const _PaymentScheduleState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  String? get successMessage;
  @override
  List<PaymentSchedule>? get paymentSchedules;
  @override
  int get skipCount;
  @override
  int get take;
  @override
  String get order;
  @override
  bool get hasMore;

  /// Create a copy of PaymentScheduleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentScheduleStateImplCopyWith<_$PaymentScheduleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

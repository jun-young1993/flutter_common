// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_schedule_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentStatus value) getPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentStatus value)? getPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentStatus value)? getPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentScheduleEventCopyWith<$Res> {
  factory $PaymentScheduleEventCopyWith(PaymentScheduleEvent value,
          $Res Function(PaymentScheduleEvent) then) =
      _$PaymentScheduleEventCopyWithImpl<$Res, PaymentScheduleEvent>;
}

/// @nodoc
class _$PaymentScheduleEventCopyWithImpl<$Res,
        $Val extends PaymentScheduleEvent>
    implements $PaymentScheduleEventCopyWith<$Res> {
  _$PaymentScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymentStatusImplCopyWith<$Res> {
  factory _$$GetPaymentStatusImplCopyWith(_$GetPaymentStatusImpl value,
          $Res Function(_$GetPaymentStatusImpl) then) =
      __$$GetPaymentStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPaymentStatusImplCopyWithImpl<$Res>
    extends _$PaymentScheduleEventCopyWithImpl<$Res, _$GetPaymentStatusImpl>
    implements _$$GetPaymentStatusImplCopyWith<$Res> {
  __$$GetPaymentStatusImplCopyWithImpl(_$GetPaymentStatusImpl _value,
      $Res Function(_$GetPaymentStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPaymentStatusImpl implements GetPaymentStatus {
  const _$GetPaymentStatusImpl();

  @override
  String toString() {
    return 'PaymentScheduleEvent.getPaymentStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPaymentStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPaymentStatus,
  }) {
    return getPaymentStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPaymentStatus,
  }) {
    return getPaymentStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPaymentStatus,
    required TResult orElse(),
  }) {
    if (getPaymentStatus != null) {
      return getPaymentStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPaymentStatus value) getPaymentStatus,
  }) {
    return getPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPaymentStatus value)? getPaymentStatus,
  }) {
    return getPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPaymentStatus value)? getPaymentStatus,
    required TResult orElse(),
  }) {
    if (getPaymentStatus != null) {
      return getPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class GetPaymentStatus implements PaymentScheduleEvent {
  const factory GetPaymentStatus() = _$GetPaymentStatusImpl;
}

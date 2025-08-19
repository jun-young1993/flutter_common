// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentSchedule _$PaymentScheduleFromJson(Map<String, dynamic> json) {
  return _PaymentSchedule.fromJson(json);
}

/// @nodoc
mixin _$PaymentSchedule {
  String get id => throw _privateConstructorUsedError;
  int get paymentNumber => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  double get principalAmount => throw _privateConstructorUsedError;
  double get interestAmount => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get remainingBalance => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  double get actualPaidAmount => throw _privateConstructorUsedError;
  double get lateFee => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get loanId => throw _privateConstructorUsedError;

  /// Serializes this PaymentSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentScheduleCopyWith<PaymentSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentScheduleCopyWith<$Res> {
  factory $PaymentScheduleCopyWith(
          PaymentSchedule value, $Res Function(PaymentSchedule) then) =
      _$PaymentScheduleCopyWithImpl<$Res, PaymentSchedule>;
  @useResult
  $Res call(
      {String id,
      int paymentNumber,
      DateTime paymentDate,
      double principalAmount,
      double interestAmount,
      double totalAmount,
      double remainingBalance,
      String status,
      DateTime? paidAt,
      double actualPaidAmount,
      double lateFee,
      String? notes,
      DateTime createdAt,
      DateTime updatedAt,
      String loanId});
}

/// @nodoc
class _$PaymentScheduleCopyWithImpl<$Res, $Val extends PaymentSchedule>
    implements $PaymentScheduleCopyWith<$Res> {
  _$PaymentScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentNumber = null,
    Object? paymentDate = null,
    Object? principalAmount = null,
    Object? interestAmount = null,
    Object? totalAmount = null,
    Object? remainingBalance = null,
    Object? status = null,
    Object? paidAt = freezed,
    Object? actualPaidAmount = null,
    Object? lateFee = null,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? loanId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentNumber: null == paymentNumber
          ? _value.paymentNumber
          : paymentNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      principalAmount: null == principalAmount
          ? _value.principalAmount
          : principalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      interestAmount: null == interestAmount
          ? _value.interestAmount
          : interestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      remainingBalance: null == remainingBalance
          ? _value.remainingBalance
          : remainingBalance // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualPaidAmount: null == actualPaidAmount
          ? _value.actualPaidAmount
          : actualPaidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      lateFee: null == lateFee
          ? _value.lateFee
          : lateFee // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentScheduleImplCopyWith<$Res>
    implements $PaymentScheduleCopyWith<$Res> {
  factory _$$PaymentScheduleImplCopyWith(_$PaymentScheduleImpl value,
          $Res Function(_$PaymentScheduleImpl) then) =
      __$$PaymentScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int paymentNumber,
      DateTime paymentDate,
      double principalAmount,
      double interestAmount,
      double totalAmount,
      double remainingBalance,
      String status,
      DateTime? paidAt,
      double actualPaidAmount,
      double lateFee,
      String? notes,
      DateTime createdAt,
      DateTime updatedAt,
      String loanId});
}

/// @nodoc
class __$$PaymentScheduleImplCopyWithImpl<$Res>
    extends _$PaymentScheduleCopyWithImpl<$Res, _$PaymentScheduleImpl>
    implements _$$PaymentScheduleImplCopyWith<$Res> {
  __$$PaymentScheduleImplCopyWithImpl(
      _$PaymentScheduleImpl _value, $Res Function(_$PaymentScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentNumber = null,
    Object? paymentDate = null,
    Object? principalAmount = null,
    Object? interestAmount = null,
    Object? totalAmount = null,
    Object? remainingBalance = null,
    Object? status = null,
    Object? paidAt = freezed,
    Object? actualPaidAmount = null,
    Object? lateFee = null,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? loanId = null,
  }) {
    return _then(_$PaymentScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paymentNumber: null == paymentNumber
          ? _value.paymentNumber
          : paymentNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      principalAmount: null == principalAmount
          ? _value.principalAmount
          : principalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      interestAmount: null == interestAmount
          ? _value.interestAmount
          : interestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      remainingBalance: null == remainingBalance
          ? _value.remainingBalance
          : remainingBalance // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualPaidAmount: null == actualPaidAmount
          ? _value.actualPaidAmount
          : actualPaidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      lateFee: null == lateFee
          ? _value.lateFee
          : lateFee // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentScheduleImpl extends _PaymentSchedule {
  const _$PaymentScheduleImpl(
      {required this.id,
      required this.paymentNumber,
      required this.paymentDate,
      required this.principalAmount,
      required this.interestAmount,
      required this.totalAmount,
      required this.remainingBalance,
      required this.status,
      this.paidAt,
      required this.actualPaidAmount,
      required this.lateFee,
      this.notes,
      required this.createdAt,
      required this.updatedAt,
      required this.loanId})
      : super._();

  factory _$PaymentScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentScheduleImplFromJson(json);

  @override
  final String id;
  @override
  final int paymentNumber;
  @override
  final DateTime paymentDate;
  @override
  final double principalAmount;
  @override
  final double interestAmount;
  @override
  final double totalAmount;
  @override
  final double remainingBalance;
  @override
  final String status;
  @override
  final DateTime? paidAt;
  @override
  final double actualPaidAmount;
  @override
  final double lateFee;
  @override
  final String? notes;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String loanId;

  @override
  String toString() {
    return 'PaymentSchedule(id: $id, paymentNumber: $paymentNumber, paymentDate: $paymentDate, principalAmount: $principalAmount, interestAmount: $interestAmount, totalAmount: $totalAmount, remainingBalance: $remainingBalance, status: $status, paidAt: $paidAt, actualPaidAmount: $actualPaidAmount, lateFee: $lateFee, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, loanId: $loanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentNumber, paymentNumber) ||
                other.paymentNumber == paymentNumber) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.principalAmount, principalAmount) ||
                other.principalAmount == principalAmount) &&
            (identical(other.interestAmount, interestAmount) ||
                other.interestAmount == interestAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.remainingBalance, remainingBalance) ||
                other.remainingBalance == remainingBalance) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.actualPaidAmount, actualPaidAmount) ||
                other.actualPaidAmount == actualPaidAmount) &&
            (identical(other.lateFee, lateFee) || other.lateFee == lateFee) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.loanId, loanId) || other.loanId == loanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentNumber,
      paymentDate,
      principalAmount,
      interestAmount,
      totalAmount,
      remainingBalance,
      status,
      paidAt,
      actualPaidAmount,
      lateFee,
      notes,
      createdAt,
      updatedAt,
      loanId);

  /// Create a copy of PaymentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentScheduleImplCopyWith<_$PaymentScheduleImpl> get copyWith =>
      __$$PaymentScheduleImplCopyWithImpl<_$PaymentScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentScheduleImplToJson(
      this,
    );
  }
}

abstract class _PaymentSchedule extends PaymentSchedule {
  const factory _PaymentSchedule(
      {required final String id,
      required final int paymentNumber,
      required final DateTime paymentDate,
      required final double principalAmount,
      required final double interestAmount,
      required final double totalAmount,
      required final double remainingBalance,
      required final String status,
      final DateTime? paidAt,
      required final double actualPaidAmount,
      required final double lateFee,
      final String? notes,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String loanId}) = _$PaymentScheduleImpl;
  const _PaymentSchedule._() : super._();

  factory _PaymentSchedule.fromJson(Map<String, dynamic> json) =
      _$PaymentScheduleImpl.fromJson;

  @override
  String get id;
  @override
  int get paymentNumber;
  @override
  DateTime get paymentDate;
  @override
  double get principalAmount;
  @override
  double get interestAmount;
  @override
  double get totalAmount;
  @override
  double get remainingBalance;
  @override
  String get status;
  @override
  DateTime? get paidAt;
  @override
  double get actualPaidAmount;
  @override
  double get lateFee;
  @override
  String? get notes;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get loanId;

  /// Create a copy of PaymentSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentScheduleImplCopyWith<_$PaymentScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

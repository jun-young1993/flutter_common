// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_repayment_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanRepaymentSummary _$LoanRepaymentSummaryFromJson(Map<String, dynamic> json) {
  return _LoanRepaymentSummary.fromJson(json);
}

/// @nodoc
mixin _$LoanRepaymentSummary {
  /// 총 상환금
  @JsonKey(fromJson: _parseDouble)
  double get totalRepaymentAmount => throw _privateConstructorUsedError;

  /// 총 이자
  @JsonKey(fromJson: _parseDouble)
  double get totalInterestAmount => throw _privateConstructorUsedError;

  /// 월 평균 상환금
  @JsonKey(fromJson: _parseDouble)
  double get averageMonthlyPayment => throw _privateConstructorUsedError;

  /// 남은 원금
  @JsonKey(fromJson: _parseDouble)
  double get remainingPrincipal => throw _privateConstructorUsedError;

  /// 남은 이자
  @JsonKey(fromJson: _parseDouble)
  double get remainingInterest => throw _privateConstructorUsedError;

  /// 다음 상환일
  DateTime get nextPaymentDate => throw _privateConstructorUsedError;

  /// 상환 진행률 (%)
  @JsonKey(fromJson: _parseDouble)
  double get repaymentProgress => throw _privateConstructorUsedError;

  /// 이자 비율 (%)
  @JsonKey(fromJson: _parseDouble)
  double get interestRatio => throw _privateConstructorUsedError;

  /// 원금 비율 (%)
  @JsonKey(fromJson: _parseDouble)
  double get principalRatio => throw _privateConstructorUsedError;

  /// 완료된 상환 건수
  @JsonKey(fromJson: _parseInt)
  int get completedPayments => throw _privateConstructorUsedError;

  /// 전체 상환 건수
  @JsonKey(fromJson: _parseInt)
  int get totalPayments => throw _privateConstructorUsedError;

  /// 연체 건수
  @JsonKey(fromJson: _parseInt)
  int get overduePayments => throw _privateConstructorUsedError;

  /// 중도상환 총액
  @JsonKey(fromJson: _parseDouble)
  double get totalPrepaymentAmount => throw _privateConstructorUsedError;

  /// 중도상환 시 절약되는 이자
  @JsonKey(fromJson: _parseDouble)
  double get prepaymentInterestSavings => throw _privateConstructorUsedError;

  /// Serializes this LoanRepaymentSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanRepaymentSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanRepaymentSummaryCopyWith<LoanRepaymentSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanRepaymentSummaryCopyWith<$Res> {
  factory $LoanRepaymentSummaryCopyWith(LoanRepaymentSummary value,
          $Res Function(LoanRepaymentSummary) then) =
      _$LoanRepaymentSummaryCopyWithImpl<$Res, LoanRepaymentSummary>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseDouble) double totalRepaymentAmount,
      @JsonKey(fromJson: _parseDouble) double totalInterestAmount,
      @JsonKey(fromJson: _parseDouble) double averageMonthlyPayment,
      @JsonKey(fromJson: _parseDouble) double remainingPrincipal,
      @JsonKey(fromJson: _parseDouble) double remainingInterest,
      DateTime nextPaymentDate,
      @JsonKey(fromJson: _parseDouble) double repaymentProgress,
      @JsonKey(fromJson: _parseDouble) double interestRatio,
      @JsonKey(fromJson: _parseDouble) double principalRatio,
      @JsonKey(fromJson: _parseInt) int completedPayments,
      @JsonKey(fromJson: _parseInt) int totalPayments,
      @JsonKey(fromJson: _parseInt) int overduePayments,
      @JsonKey(fromJson: _parseDouble) double totalPrepaymentAmount,
      @JsonKey(fromJson: _parseDouble) double prepaymentInterestSavings});
}

/// @nodoc
class _$LoanRepaymentSummaryCopyWithImpl<$Res,
        $Val extends LoanRepaymentSummary>
    implements $LoanRepaymentSummaryCopyWith<$Res> {
  _$LoanRepaymentSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanRepaymentSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRepaymentAmount = null,
    Object? totalInterestAmount = null,
    Object? averageMonthlyPayment = null,
    Object? remainingPrincipal = null,
    Object? remainingInterest = null,
    Object? nextPaymentDate = null,
    Object? repaymentProgress = null,
    Object? interestRatio = null,
    Object? principalRatio = null,
    Object? completedPayments = null,
    Object? totalPayments = null,
    Object? overduePayments = null,
    Object? totalPrepaymentAmount = null,
    Object? prepaymentInterestSavings = null,
  }) {
    return _then(_value.copyWith(
      totalRepaymentAmount: null == totalRepaymentAmount
          ? _value.totalRepaymentAmount
          : totalRepaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalInterestAmount: null == totalInterestAmount
          ? _value.totalInterestAmount
          : totalInterestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      averageMonthlyPayment: null == averageMonthlyPayment
          ? _value.averageMonthlyPayment
          : averageMonthlyPayment // ignore: cast_nullable_to_non_nullable
              as double,
      remainingPrincipal: null == remainingPrincipal
          ? _value.remainingPrincipal
          : remainingPrincipal // ignore: cast_nullable_to_non_nullable
              as double,
      remainingInterest: null == remainingInterest
          ? _value.remainingInterest
          : remainingInterest // ignore: cast_nullable_to_non_nullable
              as double,
      nextPaymentDate: null == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repaymentProgress: null == repaymentProgress
          ? _value.repaymentProgress
          : repaymentProgress // ignore: cast_nullable_to_non_nullable
              as double,
      interestRatio: null == interestRatio
          ? _value.interestRatio
          : interestRatio // ignore: cast_nullable_to_non_nullable
              as double,
      principalRatio: null == principalRatio
          ? _value.principalRatio
          : principalRatio // ignore: cast_nullable_to_non_nullable
              as double,
      completedPayments: null == completedPayments
          ? _value.completedPayments
          : completedPayments // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayments: null == totalPayments
          ? _value.totalPayments
          : totalPayments // ignore: cast_nullable_to_non_nullable
              as int,
      overduePayments: null == overduePayments
          ? _value.overduePayments
          : overduePayments // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrepaymentAmount: null == totalPrepaymentAmount
          ? _value.totalPrepaymentAmount
          : totalPrepaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      prepaymentInterestSavings: null == prepaymentInterestSavings
          ? _value.prepaymentInterestSavings
          : prepaymentInterestSavings // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanRepaymentSummaryImplCopyWith<$Res>
    implements $LoanRepaymentSummaryCopyWith<$Res> {
  factory _$$LoanRepaymentSummaryImplCopyWith(_$LoanRepaymentSummaryImpl value,
          $Res Function(_$LoanRepaymentSummaryImpl) then) =
      __$$LoanRepaymentSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseDouble) double totalRepaymentAmount,
      @JsonKey(fromJson: _parseDouble) double totalInterestAmount,
      @JsonKey(fromJson: _parseDouble) double averageMonthlyPayment,
      @JsonKey(fromJson: _parseDouble) double remainingPrincipal,
      @JsonKey(fromJson: _parseDouble) double remainingInterest,
      DateTime nextPaymentDate,
      @JsonKey(fromJson: _parseDouble) double repaymentProgress,
      @JsonKey(fromJson: _parseDouble) double interestRatio,
      @JsonKey(fromJson: _parseDouble) double principalRatio,
      @JsonKey(fromJson: _parseInt) int completedPayments,
      @JsonKey(fromJson: _parseInt) int totalPayments,
      @JsonKey(fromJson: _parseInt) int overduePayments,
      @JsonKey(fromJson: _parseDouble) double totalPrepaymentAmount,
      @JsonKey(fromJson: _parseDouble) double prepaymentInterestSavings});
}

/// @nodoc
class __$$LoanRepaymentSummaryImplCopyWithImpl<$Res>
    extends _$LoanRepaymentSummaryCopyWithImpl<$Res, _$LoanRepaymentSummaryImpl>
    implements _$$LoanRepaymentSummaryImplCopyWith<$Res> {
  __$$LoanRepaymentSummaryImplCopyWithImpl(_$LoanRepaymentSummaryImpl _value,
      $Res Function(_$LoanRepaymentSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanRepaymentSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRepaymentAmount = null,
    Object? totalInterestAmount = null,
    Object? averageMonthlyPayment = null,
    Object? remainingPrincipal = null,
    Object? remainingInterest = null,
    Object? nextPaymentDate = null,
    Object? repaymentProgress = null,
    Object? interestRatio = null,
    Object? principalRatio = null,
    Object? completedPayments = null,
    Object? totalPayments = null,
    Object? overduePayments = null,
    Object? totalPrepaymentAmount = null,
    Object? prepaymentInterestSavings = null,
  }) {
    return _then(_$LoanRepaymentSummaryImpl(
      totalRepaymentAmount: null == totalRepaymentAmount
          ? _value.totalRepaymentAmount
          : totalRepaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalInterestAmount: null == totalInterestAmount
          ? _value.totalInterestAmount
          : totalInterestAmount // ignore: cast_nullable_to_non_nullable
              as double,
      averageMonthlyPayment: null == averageMonthlyPayment
          ? _value.averageMonthlyPayment
          : averageMonthlyPayment // ignore: cast_nullable_to_non_nullable
              as double,
      remainingPrincipal: null == remainingPrincipal
          ? _value.remainingPrincipal
          : remainingPrincipal // ignore: cast_nullable_to_non_nullable
              as double,
      remainingInterest: null == remainingInterest
          ? _value.remainingInterest
          : remainingInterest // ignore: cast_nullable_to_non_nullable
              as double,
      nextPaymentDate: null == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repaymentProgress: null == repaymentProgress
          ? _value.repaymentProgress
          : repaymentProgress // ignore: cast_nullable_to_non_nullable
              as double,
      interestRatio: null == interestRatio
          ? _value.interestRatio
          : interestRatio // ignore: cast_nullable_to_non_nullable
              as double,
      principalRatio: null == principalRatio
          ? _value.principalRatio
          : principalRatio // ignore: cast_nullable_to_non_nullable
              as double,
      completedPayments: null == completedPayments
          ? _value.completedPayments
          : completedPayments // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayments: null == totalPayments
          ? _value.totalPayments
          : totalPayments // ignore: cast_nullable_to_non_nullable
              as int,
      overduePayments: null == overduePayments
          ? _value.overduePayments
          : overduePayments // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrepaymentAmount: null == totalPrepaymentAmount
          ? _value.totalPrepaymentAmount
          : totalPrepaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      prepaymentInterestSavings: null == prepaymentInterestSavings
          ? _value.prepaymentInterestSavings
          : prepaymentInterestSavings // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanRepaymentSummaryImpl implements _LoanRepaymentSummary {
  const _$LoanRepaymentSummaryImpl(
      {@JsonKey(fromJson: _parseDouble) required this.totalRepaymentAmount,
      @JsonKey(fromJson: _parseDouble) required this.totalInterestAmount,
      @JsonKey(fromJson: _parseDouble) required this.averageMonthlyPayment,
      @JsonKey(fromJson: _parseDouble) required this.remainingPrincipal,
      @JsonKey(fromJson: _parseDouble) required this.remainingInterest,
      required this.nextPaymentDate,
      @JsonKey(fromJson: _parseDouble) required this.repaymentProgress,
      @JsonKey(fromJson: _parseDouble) required this.interestRatio,
      @JsonKey(fromJson: _parseDouble) required this.principalRatio,
      @JsonKey(fromJson: _parseInt) required this.completedPayments,
      @JsonKey(fromJson: _parseInt) required this.totalPayments,
      @JsonKey(fromJson: _parseInt) required this.overduePayments,
      @JsonKey(fromJson: _parseDouble) required this.totalPrepaymentAmount,
      @JsonKey(fromJson: _parseDouble)
      required this.prepaymentInterestSavings});

  factory _$LoanRepaymentSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanRepaymentSummaryImplFromJson(json);

  /// 총 상환금
  @override
  @JsonKey(fromJson: _parseDouble)
  final double totalRepaymentAmount;

  /// 총 이자
  @override
  @JsonKey(fromJson: _parseDouble)
  final double totalInterestAmount;

  /// 월 평균 상환금
  @override
  @JsonKey(fromJson: _parseDouble)
  final double averageMonthlyPayment;

  /// 남은 원금
  @override
  @JsonKey(fromJson: _parseDouble)
  final double remainingPrincipal;

  /// 남은 이자
  @override
  @JsonKey(fromJson: _parseDouble)
  final double remainingInterest;

  /// 다음 상환일
  @override
  final DateTime nextPaymentDate;

  /// 상환 진행률 (%)
  @override
  @JsonKey(fromJson: _parseDouble)
  final double repaymentProgress;

  /// 이자 비율 (%)
  @override
  @JsonKey(fromJson: _parseDouble)
  final double interestRatio;

  /// 원금 비율 (%)
  @override
  @JsonKey(fromJson: _parseDouble)
  final double principalRatio;

  /// 완료된 상환 건수
  @override
  @JsonKey(fromJson: _parseInt)
  final int completedPayments;

  /// 전체 상환 건수
  @override
  @JsonKey(fromJson: _parseInt)
  final int totalPayments;

  /// 연체 건수
  @override
  @JsonKey(fromJson: _parseInt)
  final int overduePayments;

  /// 중도상환 총액
  @override
  @JsonKey(fromJson: _parseDouble)
  final double totalPrepaymentAmount;

  /// 중도상환 시 절약되는 이자
  @override
  @JsonKey(fromJson: _parseDouble)
  final double prepaymentInterestSavings;

  @override
  String toString() {
    return 'LoanRepaymentSummary(totalRepaymentAmount: $totalRepaymentAmount, totalInterestAmount: $totalInterestAmount, averageMonthlyPayment: $averageMonthlyPayment, remainingPrincipal: $remainingPrincipal, remainingInterest: $remainingInterest, nextPaymentDate: $nextPaymentDate, repaymentProgress: $repaymentProgress, interestRatio: $interestRatio, principalRatio: $principalRatio, completedPayments: $completedPayments, totalPayments: $totalPayments, overduePayments: $overduePayments, totalPrepaymentAmount: $totalPrepaymentAmount, prepaymentInterestSavings: $prepaymentInterestSavings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanRepaymentSummaryImpl &&
            (identical(other.totalRepaymentAmount, totalRepaymentAmount) ||
                other.totalRepaymentAmount == totalRepaymentAmount) &&
            (identical(other.totalInterestAmount, totalInterestAmount) ||
                other.totalInterestAmount == totalInterestAmount) &&
            (identical(other.averageMonthlyPayment, averageMonthlyPayment) ||
                other.averageMonthlyPayment == averageMonthlyPayment) &&
            (identical(other.remainingPrincipal, remainingPrincipal) ||
                other.remainingPrincipal == remainingPrincipal) &&
            (identical(other.remainingInterest, remainingInterest) ||
                other.remainingInterest == remainingInterest) &&
            (identical(other.nextPaymentDate, nextPaymentDate) ||
                other.nextPaymentDate == nextPaymentDate) &&
            (identical(other.repaymentProgress, repaymentProgress) ||
                other.repaymentProgress == repaymentProgress) &&
            (identical(other.interestRatio, interestRatio) ||
                other.interestRatio == interestRatio) &&
            (identical(other.principalRatio, principalRatio) ||
                other.principalRatio == principalRatio) &&
            (identical(other.completedPayments, completedPayments) ||
                other.completedPayments == completedPayments) &&
            (identical(other.totalPayments, totalPayments) ||
                other.totalPayments == totalPayments) &&
            (identical(other.overduePayments, overduePayments) ||
                other.overduePayments == overduePayments) &&
            (identical(other.totalPrepaymentAmount, totalPrepaymentAmount) ||
                other.totalPrepaymentAmount == totalPrepaymentAmount) &&
            (identical(other.prepaymentInterestSavings,
                    prepaymentInterestSavings) ||
                other.prepaymentInterestSavings == prepaymentInterestSavings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalRepaymentAmount,
      totalInterestAmount,
      averageMonthlyPayment,
      remainingPrincipal,
      remainingInterest,
      nextPaymentDate,
      repaymentProgress,
      interestRatio,
      principalRatio,
      completedPayments,
      totalPayments,
      overduePayments,
      totalPrepaymentAmount,
      prepaymentInterestSavings);

  /// Create a copy of LoanRepaymentSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanRepaymentSummaryImplCopyWith<_$LoanRepaymentSummaryImpl>
      get copyWith =>
          __$$LoanRepaymentSummaryImplCopyWithImpl<_$LoanRepaymentSummaryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanRepaymentSummaryImplToJson(
      this,
    );
  }
}

abstract class _LoanRepaymentSummary implements LoanRepaymentSummary {
  const factory _LoanRepaymentSummary(
      {@JsonKey(fromJson: _parseDouble)
      required final double totalRepaymentAmount,
      @JsonKey(fromJson: _parseDouble)
      required final double totalInterestAmount,
      @JsonKey(fromJson: _parseDouble)
      required final double averageMonthlyPayment,
      @JsonKey(fromJson: _parseDouble) required final double remainingPrincipal,
      @JsonKey(fromJson: _parseDouble) required final double remainingInterest,
      required final DateTime nextPaymentDate,
      @JsonKey(fromJson: _parseDouble) required final double repaymentProgress,
      @JsonKey(fromJson: _parseDouble) required final double interestRatio,
      @JsonKey(fromJson: _parseDouble) required final double principalRatio,
      @JsonKey(fromJson: _parseInt) required final int completedPayments,
      @JsonKey(fromJson: _parseInt) required final int totalPayments,
      @JsonKey(fromJson: _parseInt) required final int overduePayments,
      @JsonKey(fromJson: _parseDouble)
      required final double totalPrepaymentAmount,
      @JsonKey(fromJson: _parseDouble)
      required final double
          prepaymentInterestSavings}) = _$LoanRepaymentSummaryImpl;

  factory _LoanRepaymentSummary.fromJson(Map<String, dynamic> json) =
      _$LoanRepaymentSummaryImpl.fromJson;

  /// 총 상환금
  @override
  @JsonKey(fromJson: _parseDouble)
  double get totalRepaymentAmount;

  /// 총 이자
  @override
  @JsonKey(fromJson: _parseDouble)
  double get totalInterestAmount;

  /// 월 평균 상환금
  @override
  @JsonKey(fromJson: _parseDouble)
  double get averageMonthlyPayment;

  /// 남은 원금
  @override
  @JsonKey(fromJson: _parseDouble)
  double get remainingPrincipal;

  /// 남은 이자
  @override
  @JsonKey(fromJson: _parseDouble)
  double get remainingInterest;

  /// 다음 상환일
  @override
  DateTime get nextPaymentDate;

  /// 상환 진행률 (%)
  @override
  @JsonKey(fromJson: _parseDouble)
  double get repaymentProgress;

  /// 이자 비율 (%)
  @override
  @JsonKey(fromJson: _parseDouble)
  double get interestRatio;

  /// 원금 비율 (%)
  @override
  @JsonKey(fromJson: _parseDouble)
  double get principalRatio;

  /// 완료된 상환 건수
  @override
  @JsonKey(fromJson: _parseInt)
  int get completedPayments;

  /// 전체 상환 건수
  @override
  @JsonKey(fromJson: _parseInt)
  int get totalPayments;

  /// 연체 건수
  @override
  @JsonKey(fromJson: _parseInt)
  int get overduePayments;

  /// 중도상환 총액
  @override
  @JsonKey(fromJson: _parseDouble)
  double get totalPrepaymentAmount;

  /// 중도상환 시 절약되는 이자
  @override
  @JsonKey(fromJson: _parseDouble)
  double get prepaymentInterestSavings;

  /// Create a copy of LoanRepaymentSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanRepaymentSummaryImplCopyWith<_$LoanRepaymentSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

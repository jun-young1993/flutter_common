// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_summery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoanSummeryState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  LoanRepaymentSummary? get loanRepaymentSummary =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoanSummeryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanSummeryStateCopyWith<LoanSummeryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanSummeryStateCopyWith<$Res> {
  factory $LoanSummeryStateCopyWith(
          LoanSummeryState value, $Res Function(LoanSummeryState) then) =
      _$LoanSummeryStateCopyWithImpl<$Res, LoanSummeryState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      LoanRepaymentSummary? loanRepaymentSummary});

  $AppExceptionCopyWith<$Res>? get error;
  $LoanRepaymentSummaryCopyWith<$Res>? get loanRepaymentSummary;
}

/// @nodoc
class _$LoanSummeryStateCopyWithImpl<$Res, $Val extends LoanSummeryState>
    implements $LoanSummeryStateCopyWith<$Res> {
  _$LoanSummeryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanSummeryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? loanRepaymentSummary = freezed,
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
      loanRepaymentSummary: freezed == loanRepaymentSummary
          ? _value.loanRepaymentSummary
          : loanRepaymentSummary // ignore: cast_nullable_to_non_nullable
              as LoanRepaymentSummary?,
    ) as $Val);
  }

  /// Create a copy of LoanSummeryState
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

  /// Create a copy of LoanSummeryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoanRepaymentSummaryCopyWith<$Res>? get loanRepaymentSummary {
    if (_value.loanRepaymentSummary == null) {
      return null;
    }

    return $LoanRepaymentSummaryCopyWith<$Res>(_value.loanRepaymentSummary!,
        (value) {
      return _then(_value.copyWith(loanRepaymentSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanSummeryStateImplCopyWith<$Res>
    implements $LoanSummeryStateCopyWith<$Res> {
  factory _$$LoanSummeryStateImplCopyWith(_$LoanSummeryStateImpl value,
          $Res Function(_$LoanSummeryStateImpl) then) =
      __$$LoanSummeryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      LoanRepaymentSummary? loanRepaymentSummary});

  @override
  $AppExceptionCopyWith<$Res>? get error;
  @override
  $LoanRepaymentSummaryCopyWith<$Res>? get loanRepaymentSummary;
}

/// @nodoc
class __$$LoanSummeryStateImplCopyWithImpl<$Res>
    extends _$LoanSummeryStateCopyWithImpl<$Res, _$LoanSummeryStateImpl>
    implements _$$LoanSummeryStateImplCopyWith<$Res> {
  __$$LoanSummeryStateImplCopyWithImpl(_$LoanSummeryStateImpl _value,
      $Res Function(_$LoanSummeryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanSummeryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? loanRepaymentSummary = freezed,
  }) {
    return _then(_$LoanSummeryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      loanRepaymentSummary: freezed == loanRepaymentSummary
          ? _value.loanRepaymentSummary
          : loanRepaymentSummary // ignore: cast_nullable_to_non_nullable
              as LoanRepaymentSummary?,
    ));
  }
}

/// @nodoc

class _$LoanSummeryStateImpl implements _LoanSummeryState {
  const _$LoanSummeryStateImpl(
      {this.isLoading = false,
      this.error = null,
      this.loanRepaymentSummary = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  @override
  @JsonKey()
  final LoanRepaymentSummary? loanRepaymentSummary;

  @override
  String toString() {
    return 'LoanSummeryState(isLoading: $isLoading, error: $error, loanRepaymentSummary: $loanRepaymentSummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanSummeryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loanRepaymentSummary, loanRepaymentSummary) ||
                other.loanRepaymentSummary == loanRepaymentSummary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, error, loanRepaymentSummary);

  /// Create a copy of LoanSummeryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanSummeryStateImplCopyWith<_$LoanSummeryStateImpl> get copyWith =>
      __$$LoanSummeryStateImplCopyWithImpl<_$LoanSummeryStateImpl>(
          this, _$identity);
}

abstract class _LoanSummeryState implements LoanSummeryState {
  const factory _LoanSummeryState(
          {final bool isLoading,
          final AppException? error,
          final LoanRepaymentSummary? loanRepaymentSummary}) =
      _$LoanSummeryStateImpl;

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  LoanRepaymentSummary? get loanRepaymentSummary;

  /// Create a copy of LoanSummeryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanSummeryStateImplCopyWith<_$LoanSummeryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_summery_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoanSummeryEvent {
  String get loanId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) getLoanSummery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? getLoanSummery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? getLoanSummery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoanSummery value) getLoanSummery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoanSummery value)? getLoanSummery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoanSummery value)? getLoanSummery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoanSummeryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanSummeryEventCopyWith<LoanSummeryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanSummeryEventCopyWith<$Res> {
  factory $LoanSummeryEventCopyWith(
          LoanSummeryEvent value, $Res Function(LoanSummeryEvent) then) =
      _$LoanSummeryEventCopyWithImpl<$Res, LoanSummeryEvent>;
  @useResult
  $Res call({String loanId});
}

/// @nodoc
class _$LoanSummeryEventCopyWithImpl<$Res, $Val extends LoanSummeryEvent>
    implements $LoanSummeryEventCopyWith<$Res> {
  _$LoanSummeryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanSummeryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
  }) {
    return _then(_value.copyWith(
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLoanSummeryImplCopyWith<$Res>
    implements $LoanSummeryEventCopyWith<$Res> {
  factory _$$GetLoanSummeryImplCopyWith(_$GetLoanSummeryImpl value,
          $Res Function(_$GetLoanSummeryImpl) then) =
      __$$GetLoanSummeryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loanId});
}

/// @nodoc
class __$$GetLoanSummeryImplCopyWithImpl<$Res>
    extends _$LoanSummeryEventCopyWithImpl<$Res, _$GetLoanSummeryImpl>
    implements _$$GetLoanSummeryImplCopyWith<$Res> {
  __$$GetLoanSummeryImplCopyWithImpl(
      _$GetLoanSummeryImpl _value, $Res Function(_$GetLoanSummeryImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanSummeryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
  }) {
    return _then(_$GetLoanSummeryImpl(
      null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLoanSummeryImpl implements GetLoanSummery {
  const _$GetLoanSummeryImpl(this.loanId);

  @override
  final String loanId;

  @override
  String toString() {
    return 'LoanSummeryEvent.getLoanSummery(loanId: $loanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLoanSummeryImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loanId);

  /// Create a copy of LoanSummeryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLoanSummeryImplCopyWith<_$GetLoanSummeryImpl> get copyWith =>
      __$$GetLoanSummeryImplCopyWithImpl<_$GetLoanSummeryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) getLoanSummery,
  }) {
    return getLoanSummery(loanId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? getLoanSummery,
  }) {
    return getLoanSummery?.call(loanId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? getLoanSummery,
    required TResult orElse(),
  }) {
    if (getLoanSummery != null) {
      return getLoanSummery(loanId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoanSummery value) getLoanSummery,
  }) {
    return getLoanSummery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoanSummery value)? getLoanSummery,
  }) {
    return getLoanSummery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoanSummery value)? getLoanSummery,
    required TResult orElse(),
  }) {
    if (getLoanSummery != null) {
      return getLoanSummery(this);
    }
    return orElse();
  }
}

abstract class GetLoanSummery implements LoanSummeryEvent {
  const factory GetLoanSummery(final String loanId) = _$GetLoanSummeryImpl;

  @override
  String get loanId;

  /// Create a copy of LoanSummeryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLoanSummeryImplCopyWith<_$GetLoanSummeryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

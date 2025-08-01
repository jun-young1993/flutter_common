// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_point_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPointBalance _$UserPointBalanceFromJson(Map<String, dynamic> json) {
  return _UserPointBalance.fromJson(json);
}

/// @nodoc
mixin _$UserPointBalance {
  String get id => throw _privateConstructorUsedError;
  int get currentPoints => throw _privateConstructorUsedError; // 현재 포인트
  int get totalEarnedPoints => throw _privateConstructorUsedError; // 총 획득 포인트
  int get totalSpentPoints => throw _privateConstructorUsedError; // 총 사용 포인트
  int get totalWithdrawnPoints => throw _privateConstructorUsedError;

  /// Serializes this UserPointBalance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPointBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPointBalanceCopyWith<UserPointBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPointBalanceCopyWith<$Res> {
  factory $UserPointBalanceCopyWith(
          UserPointBalance value, $Res Function(UserPointBalance) then) =
      _$UserPointBalanceCopyWithImpl<$Res, UserPointBalance>;
  @useResult
  $Res call(
      {String id,
      int currentPoints,
      int totalEarnedPoints,
      int totalSpentPoints,
      int totalWithdrawnPoints});
}

/// @nodoc
class _$UserPointBalanceCopyWithImpl<$Res, $Val extends UserPointBalance>
    implements $UserPointBalanceCopyWith<$Res> {
  _$UserPointBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPointBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentPoints = null,
    Object? totalEarnedPoints = null,
    Object? totalSpentPoints = null,
    Object? totalWithdrawnPoints = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentPoints: null == currentPoints
          ? _value.currentPoints
          : currentPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalEarnedPoints: null == totalEarnedPoints
          ? _value.totalEarnedPoints
          : totalEarnedPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpentPoints: null == totalSpentPoints
          ? _value.totalSpentPoints
          : totalSpentPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalWithdrawnPoints: null == totalWithdrawnPoints
          ? _value.totalWithdrawnPoints
          : totalWithdrawnPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPointBalanceImplCopyWith<$Res>
    implements $UserPointBalanceCopyWith<$Res> {
  factory _$$UserPointBalanceImplCopyWith(_$UserPointBalanceImpl value,
          $Res Function(_$UserPointBalanceImpl) then) =
      __$$UserPointBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int currentPoints,
      int totalEarnedPoints,
      int totalSpentPoints,
      int totalWithdrawnPoints});
}

/// @nodoc
class __$$UserPointBalanceImplCopyWithImpl<$Res>
    extends _$UserPointBalanceCopyWithImpl<$Res, _$UserPointBalanceImpl>
    implements _$$UserPointBalanceImplCopyWith<$Res> {
  __$$UserPointBalanceImplCopyWithImpl(_$UserPointBalanceImpl _value,
      $Res Function(_$UserPointBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPointBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentPoints = null,
    Object? totalEarnedPoints = null,
    Object? totalSpentPoints = null,
    Object? totalWithdrawnPoints = null,
  }) {
    return _then(_$UserPointBalanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentPoints: null == currentPoints
          ? _value.currentPoints
          : currentPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalEarnedPoints: null == totalEarnedPoints
          ? _value.totalEarnedPoints
          : totalEarnedPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpentPoints: null == totalSpentPoints
          ? _value.totalSpentPoints
          : totalSpentPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalWithdrawnPoints: null == totalWithdrawnPoints
          ? _value.totalWithdrawnPoints
          : totalWithdrawnPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPointBalanceImpl extends _UserPointBalance {
  const _$UserPointBalanceImpl(
      {required this.id,
      required this.currentPoints,
      required this.totalEarnedPoints,
      required this.totalSpentPoints,
      required this.totalWithdrawnPoints})
      : super._();

  factory _$UserPointBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPointBalanceImplFromJson(json);

  @override
  final String id;
  @override
  final int currentPoints;
// 현재 포인트
  @override
  final int totalEarnedPoints;
// 총 획득 포인트
  @override
  final int totalSpentPoints;
// 총 사용 포인트
  @override
  final int totalWithdrawnPoints;

  @override
  String toString() {
    return 'UserPointBalance(id: $id, currentPoints: $currentPoints, totalEarnedPoints: $totalEarnedPoints, totalSpentPoints: $totalSpentPoints, totalWithdrawnPoints: $totalWithdrawnPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPointBalanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentPoints, currentPoints) ||
                other.currentPoints == currentPoints) &&
            (identical(other.totalEarnedPoints, totalEarnedPoints) ||
                other.totalEarnedPoints == totalEarnedPoints) &&
            (identical(other.totalSpentPoints, totalSpentPoints) ||
                other.totalSpentPoints == totalSpentPoints) &&
            (identical(other.totalWithdrawnPoints, totalWithdrawnPoints) ||
                other.totalWithdrawnPoints == totalWithdrawnPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, currentPoints,
      totalEarnedPoints, totalSpentPoints, totalWithdrawnPoints);

  /// Create a copy of UserPointBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPointBalanceImplCopyWith<_$UserPointBalanceImpl> get copyWith =>
      __$$UserPointBalanceImplCopyWithImpl<_$UserPointBalanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPointBalanceImplToJson(
      this,
    );
  }
}

abstract class _UserPointBalance extends UserPointBalance {
  const factory _UserPointBalance(
      {required final String id,
      required final int currentPoints,
      required final int totalEarnedPoints,
      required final int totalSpentPoints,
      required final int totalWithdrawnPoints}) = _$UserPointBalanceImpl;
  const _UserPointBalance._() : super._();

  factory _UserPointBalance.fromJson(Map<String, dynamic> json) =
      _$UserPointBalanceImpl.fromJson;

  @override
  String get id;
  @override
  int get currentPoints; // 현재 포인트
  @override
  int get totalEarnedPoints; // 총 획득 포인트
  @override
  int get totalSpentPoints; // 총 사용 포인트
  @override
  int get totalWithdrawnPoints;

  /// Create a copy of UserPointBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPointBalanceImplCopyWith<_$UserPointBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

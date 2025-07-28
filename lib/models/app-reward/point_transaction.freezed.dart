// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointTransaction _$PointTransactionFromJson(Map<String, dynamic> json) {
  return _PointTransaction.fromJson(json);
}

/// @nodoc
mixin _$PointTransaction {
  String get id => throw _privateConstructorUsedError;
  PointTransactionType get transactionType =>
      throw _privateConstructorUsedError;
  PointTransactionSource get source => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get balanceBefore => throw _privateConstructorUsedError;
  int get balanceAfter => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PointTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PointTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointTransactionCopyWith<PointTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointTransactionCopyWith<$Res> {
  factory $PointTransactionCopyWith(
          PointTransaction value, $Res Function(PointTransaction) then) =
      _$PointTransactionCopyWithImpl<$Res, PointTransaction>;
  @useResult
  $Res call(
      {String id,
      PointTransactionType transactionType,
      PointTransactionSource source,
      int amount,
      int balanceBefore,
      int balanceAfter,
      String? description,
      DateTime createdAt});
}

/// @nodoc
class _$PointTransactionCopyWithImpl<$Res, $Val extends PointTransaction>
    implements $PointTransactionCopyWith<$Res> {
  _$PointTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PointTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionType = null,
    Object? source = null,
    Object? amount = null,
    Object? balanceBefore = null,
    Object? balanceAfter = null,
    Object? description = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as PointTransactionType,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PointTransactionSource,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      balanceBefore: null == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as int,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointTransactionImplCopyWith<$Res>
    implements $PointTransactionCopyWith<$Res> {
  factory _$$PointTransactionImplCopyWith(_$PointTransactionImpl value,
          $Res Function(_$PointTransactionImpl) then) =
      __$$PointTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      PointTransactionType transactionType,
      PointTransactionSource source,
      int amount,
      int balanceBefore,
      int balanceAfter,
      String? description,
      DateTime createdAt});
}

/// @nodoc
class __$$PointTransactionImplCopyWithImpl<$Res>
    extends _$PointTransactionCopyWithImpl<$Res, _$PointTransactionImpl>
    implements _$$PointTransactionImplCopyWith<$Res> {
  __$$PointTransactionImplCopyWithImpl(_$PointTransactionImpl _value,
      $Res Function(_$PointTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PointTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionType = null,
    Object? source = null,
    Object? amount = null,
    Object? balanceBefore = null,
    Object? balanceAfter = null,
    Object? description = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PointTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as PointTransactionType,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PointTransactionSource,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      balanceBefore: null == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as int,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointTransactionImpl extends _PointTransaction {
  const _$PointTransactionImpl(
      {required this.id,
      required this.transactionType,
      required this.source,
      required this.amount,
      required this.balanceBefore,
      required this.balanceAfter,
      required this.description,
      required this.createdAt})
      : super._();

  factory _$PointTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final PointTransactionType transactionType;
  @override
  final PointTransactionSource source;
  @override
  final int amount;
  @override
  final int balanceBefore;
  @override
  final int balanceAfter;
  @override
  final String? description;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PointTransaction(id: $id, transactionType: $transactionType, source: $source, amount: $amount, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceBefore, balanceBefore) ||
                other.balanceBefore == balanceBefore) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionType, source,
      amount, balanceBefore, balanceAfter, description, createdAt);

  /// Create a copy of PointTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointTransactionImplCopyWith<_$PointTransactionImpl> get copyWith =>
      __$$PointTransactionImplCopyWithImpl<_$PointTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointTransactionImplToJson(
      this,
    );
  }
}

abstract class _PointTransaction extends PointTransaction {
  const factory _PointTransaction(
      {required final String id,
      required final PointTransactionType transactionType,
      required final PointTransactionSource source,
      required final int amount,
      required final int balanceBefore,
      required final int balanceAfter,
      required final String? description,
      required final DateTime createdAt}) = _$PointTransactionImpl;
  const _PointTransaction._() : super._();

  factory _PointTransaction.fromJson(Map<String, dynamic> json) =
      _$PointTransactionImpl.fromJson;

  @override
  String get id;
  @override
  PointTransactionType get transactionType;
  @override
  PointTransactionSource get source;
  @override
  int get amount;
  @override
  int get balanceBefore;
  @override
  int get balanceAfter;
  @override
  String? get description;
  @override
  DateTime get createdAt;

  /// Create a copy of PointTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointTransactionImplCopyWith<_$PointTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserReward _$UserRewardFromJson(Map<String, dynamic> json) {
  return _UserReward.fromJson(json);
}

/// @nodoc
mixin _$UserReward {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  PointTransactionSource get rewardType => throw _privateConstructorUsedError;
  int get usageCount => throw _privateConstructorUsedError;
  int get totalPoitEarned => throw _privateConstructorUsedError;

  /// Serializes this UserReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRewardCopyWith<UserReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRewardCopyWith<$Res> {
  factory $UserRewardCopyWith(
          UserReward value, $Res Function(UserReward) then) =
      _$UserRewardCopyWithImpl<$Res, UserReward>;
  @useResult
  $Res call(
      {String id,
      String userId,
      PointTransactionSource rewardType,
      int usageCount,
      int totalPoitEarned});
}

/// @nodoc
class _$UserRewardCopyWithImpl<$Res, $Val extends UserReward>
    implements $UserRewardCopyWith<$Res> {
  _$UserRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? rewardType = null,
    Object? usageCount = null,
    Object? totalPoitEarned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      rewardType: null == rewardType
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as PointTransactionSource,
      usageCount: null == usageCount
          ? _value.usageCount
          : usageCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPoitEarned: null == totalPoitEarned
          ? _value.totalPoitEarned
          : totalPoitEarned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRewardImplCopyWith<$Res>
    implements $UserRewardCopyWith<$Res> {
  factory _$$UserRewardImplCopyWith(
          _$UserRewardImpl value, $Res Function(_$UserRewardImpl) then) =
      __$$UserRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      PointTransactionSource rewardType,
      int usageCount,
      int totalPoitEarned});
}

/// @nodoc
class __$$UserRewardImplCopyWithImpl<$Res>
    extends _$UserRewardCopyWithImpl<$Res, _$UserRewardImpl>
    implements _$$UserRewardImplCopyWith<$Res> {
  __$$UserRewardImplCopyWithImpl(
      _$UserRewardImpl _value, $Res Function(_$UserRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? rewardType = null,
    Object? usageCount = null,
    Object? totalPoitEarned = null,
  }) {
    return _then(_$UserRewardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      rewardType: null == rewardType
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as PointTransactionSource,
      usageCount: null == usageCount
          ? _value.usageCount
          : usageCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPoitEarned: null == totalPoitEarned
          ? _value.totalPoitEarned
          : totalPoitEarned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRewardImpl extends _UserReward {
  const _$UserRewardImpl(
      {required this.id,
      required this.userId,
      required this.rewardType,
      required this.usageCount,
      required this.totalPoitEarned})
      : super._();

  factory _$UserRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRewardImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final PointTransactionSource rewardType;
  @override
  final int usageCount;
  @override
  final int totalPoitEarned;

  @override
  String toString() {
    return 'UserReward(id: $id, userId: $userId, rewardType: $rewardType, usageCount: $usageCount, totalPoitEarned: $totalPoitEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRewardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rewardType, rewardType) ||
                other.rewardType == rewardType) &&
            (identical(other.usageCount, usageCount) ||
                other.usageCount == usageCount) &&
            (identical(other.totalPoitEarned, totalPoitEarned) ||
                other.totalPoitEarned == totalPoitEarned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, rewardType, usageCount, totalPoitEarned);

  /// Create a copy of UserReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRewardImplCopyWith<_$UserRewardImpl> get copyWith =>
      __$$UserRewardImplCopyWithImpl<_$UserRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRewardImplToJson(
      this,
    );
  }
}

abstract class _UserReward extends UserReward {
  const factory _UserReward(
      {required final String id,
      required final String userId,
      required final PointTransactionSource rewardType,
      required final int usageCount,
      required final int totalPoitEarned}) = _$UserRewardImpl;
  const _UserReward._() : super._();

  factory _UserReward.fromJson(Map<String, dynamic> json) =
      _$UserRewardImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  PointTransactionSource get rewardType;
  @override
  int get usageCount;
  @override
  int get totalPoitEarned;

  /// Create a copy of UserReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRewardImplCopyWith<_$UserRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_storage_limit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserStorageLimit _$UserStorageLimitFromJson(Map<String, dynamic> json) {
  return _UserStorageLimit.fromJson(json);
}

/// @nodoc
mixin _$UserStorageLimit {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  StorageLimitType get limitType => throw _privateConstructorUsedError;
  int get limitValue => throw _privateConstructorUsedError;
  int get currentUsage => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserStorageLimit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStorageLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStorageLimitCopyWith<UserStorageLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStorageLimitCopyWith<$Res> {
  factory $UserStorageLimitCopyWith(
          UserStorageLimit value, $Res Function(UserStorageLimit) then) =
      _$UserStorageLimitCopyWithImpl<$Res, UserStorageLimit>;
  @useResult
  $Res call(
      {String id,
      String userId,
      StorageLimitType limitType,
      int limitValue,
      int currentUsage,
      bool isActive,
      DateTime? expiresAt,
      String? description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserStorageLimitCopyWithImpl<$Res, $Val extends UserStorageLimit>
    implements $UserStorageLimitCopyWith<$Res> {
  _$UserStorageLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStorageLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? limitType = null,
    Object? limitValue = null,
    Object? currentUsage = null,
    Object? isActive = null,
    Object? expiresAt = freezed,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      limitType: null == limitType
          ? _value.limitType
          : limitType // ignore: cast_nullable_to_non_nullable
              as StorageLimitType,
      limitValue: null == limitValue
          ? _value.limitValue
          : limitValue // ignore: cast_nullable_to_non_nullable
              as int,
      currentUsage: null == currentUsage
          ? _value.currentUsage
          : currentUsage // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStorageLimitImplCopyWith<$Res>
    implements $UserStorageLimitCopyWith<$Res> {
  factory _$$UserStorageLimitImplCopyWith(_$UserStorageLimitImpl value,
          $Res Function(_$UserStorageLimitImpl) then) =
      __$$UserStorageLimitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      StorageLimitType limitType,
      int limitValue,
      int currentUsage,
      bool isActive,
      DateTime? expiresAt,
      String? description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$UserStorageLimitImplCopyWithImpl<$Res>
    extends _$UserStorageLimitCopyWithImpl<$Res, _$UserStorageLimitImpl>
    implements _$$UserStorageLimitImplCopyWith<$Res> {
  __$$UserStorageLimitImplCopyWithImpl(_$UserStorageLimitImpl _value,
      $Res Function(_$UserStorageLimitImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStorageLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? limitType = null,
    Object? limitValue = null,
    Object? currentUsage = null,
    Object? isActive = null,
    Object? expiresAt = freezed,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UserStorageLimitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      limitType: null == limitType
          ? _value.limitType
          : limitType // ignore: cast_nullable_to_non_nullable
              as StorageLimitType,
      limitValue: null == limitValue
          ? _value.limitValue
          : limitValue // ignore: cast_nullable_to_non_nullable
              as int,
      currentUsage: null == currentUsage
          ? _value.currentUsage
          : currentUsage // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStorageLimitImpl extends _UserStorageLimit {
  const _$UserStorageLimitImpl(
      {required this.id,
      required this.userId,
      required this.limitType,
      required this.limitValue,
      this.currentUsage = 0,
      this.isActive = true,
      this.expiresAt = null,
      this.description = null,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$UserStorageLimitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStorageLimitImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final StorageLimitType limitType;
  @override
  final int limitValue;
  @override
  @JsonKey()
  final int currentUsage;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final DateTime? expiresAt;
  @override
  @JsonKey()
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserStorageLimit(id: $id, userId: $userId, limitType: $limitType, limitValue: $limitValue, currentUsage: $currentUsage, isActive: $isActive, expiresAt: $expiresAt, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStorageLimitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.limitType, limitType) ||
                other.limitType == limitType) &&
            (identical(other.limitValue, limitValue) ||
                other.limitValue == limitValue) &&
            (identical(other.currentUsage, currentUsage) ||
                other.currentUsage == currentUsage) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      limitType,
      limitValue,
      currentUsage,
      isActive,
      expiresAt,
      description,
      createdAt,
      updatedAt);

  /// Create a copy of UserStorageLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStorageLimitImplCopyWith<_$UserStorageLimitImpl> get copyWith =>
      __$$UserStorageLimitImplCopyWithImpl<_$UserStorageLimitImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStorageLimitImplToJson(
      this,
    );
  }
}

abstract class _UserStorageLimit extends UserStorageLimit {
  const factory _UserStorageLimit(
      {required final String id,
      required final String userId,
      required final StorageLimitType limitType,
      required final int limitValue,
      final int currentUsage,
      final bool isActive,
      final DateTime? expiresAt,
      final String? description,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$UserStorageLimitImpl;
  const _UserStorageLimit._() : super._();

  factory _UserStorageLimit.fromJson(Map<String, dynamic> json) =
      _$UserStorageLimitImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  StorageLimitType get limitType;
  @override
  int get limitValue;
  @override
  int get currentUsage;
  @override
  bool get isActive;
  @override
  DateTime? get expiresAt;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of UserStorageLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStorageLimitImplCopyWith<_$UserStorageLimitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

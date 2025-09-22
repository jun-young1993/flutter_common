// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGroup _$UserGroupFromJson(Map<String, dynamic> json) {
  return _UserGroup.fromJson(json);
}

/// @nodoc
mixin _$UserGroup {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isSystem => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  bool get isJoinable => throw _privateConstructorUsedError;

  /// Serializes this UserGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGroupCopyWith<UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupCopyWith<$Res> {
  factory $UserGroupCopyWith(UserGroup value, $Res Function(UserGroup) then) =
      _$UserGroupCopyWithImpl<$Res, UserGroup>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      bool isActive,
      bool isSystem,
      String createdAt,
      String updatedAt,
      List<User>? users,
      String? number,
      bool isJoinable});
}

/// @nodoc
class _$UserGroupCopyWithImpl<$Res, $Val extends UserGroup>
    implements $UserGroupCopyWith<$Res> {
  _$UserGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? isActive = null,
    Object? isSystem = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? users = freezed,
    Object? number = freezed,
    Object? isJoinable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSystem: null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoinable: null == isJoinable
          ? _value.isJoinable
          : isJoinable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGroupImplCopyWith<$Res>
    implements $UserGroupCopyWith<$Res> {
  factory _$$UserGroupImplCopyWith(
          _$UserGroupImpl value, $Res Function(_$UserGroupImpl) then) =
      __$$UserGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      bool isActive,
      bool isSystem,
      String createdAt,
      String updatedAt,
      List<User>? users,
      String? number,
      bool isJoinable});
}

/// @nodoc
class __$$UserGroupImplCopyWithImpl<$Res>
    extends _$UserGroupCopyWithImpl<$Res, _$UserGroupImpl>
    implements _$$UserGroupImplCopyWith<$Res> {
  __$$UserGroupImplCopyWithImpl(
      _$UserGroupImpl _value, $Res Function(_$UserGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? isActive = null,
    Object? isSystem = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? users = freezed,
    Object? number = freezed,
    Object? isJoinable = null,
  }) {
    return _then(_$UserGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSystem: null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      isJoinable: null == isJoinable
          ? _value.isJoinable
          : isJoinable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGroupImpl extends _UserGroup {
  const _$UserGroupImpl(
      {required this.id,
      this.name = null,
      this.description = null,
      required this.isActive,
      required this.isSystem,
      required this.createdAt,
      required this.updatedAt,
      final List<User>? users = const [],
      this.number = null,
      required this.isJoinable})
      : _users = users,
        super._();

  factory _$UserGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGroupImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? description;
  @override
  final bool isActive;
  @override
  final bool isSystem;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<User>? _users;
  @override
  @JsonKey()
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? number;
  @override
  final bool isJoinable;

  @override
  String toString() {
    return 'UserGroup(id: $id, name: $name, description: $description, isActive: $isActive, isSystem: $isSystem, createdAt: $createdAt, updatedAt: $updatedAt, users: $users, number: $number, isJoinable: $isJoinable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isSystem, isSystem) ||
                other.isSystem == isSystem) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isJoinable, isJoinable) ||
                other.isJoinable == isJoinable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      isActive,
      isSystem,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_users),
      number,
      isJoinable);

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGroupImplCopyWith<_$UserGroupImpl> get copyWith =>
      __$$UserGroupImplCopyWithImpl<_$UserGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGroupImplToJson(
      this,
    );
  }
}

abstract class _UserGroup extends UserGroup {
  const factory _UserGroup(
      {required final String id,
      final String? name,
      final String? description,
      required final bool isActive,
      required final bool isSystem,
      required final String createdAt,
      required final String updatedAt,
      final List<User>? users,
      final String? number,
      required final bool isJoinable}) = _$UserGroupImpl;
  const _UserGroup._() : super._();

  factory _UserGroup.fromJson(Map<String, dynamic> json) =
      _$UserGroupImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  bool get isActive;
  @override
  bool get isSystem;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<User>? get users;
  @override
  String? get number;
  @override
  bool get isJoinable;

  /// Create a copy of UserGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGroupImplCopyWith<_$UserGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

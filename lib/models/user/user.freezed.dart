// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<UserGroup>? get userGroups => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  List<UserStorageLimit> get storageLimits =>
      throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String? username,
      String? email,
      String type,
      bool isActive,
      bool isAdmin,
      String createdAt,
      String updatedAt,
      List<UserGroup>? userGroups,
      String? fcmToken,
      List<UserStorageLimit> storageLimits});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? email = freezed,
    Object? type = null,
    Object? isActive = null,
    Object? isAdmin = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userGroups = freezed,
    Object? fcmToken = freezed,
    Object? storageLimits = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      userGroups: freezed == userGroups
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<UserGroup>?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLimits: null == storageLimits
          ? _value.storageLimits
          : storageLimits // ignore: cast_nullable_to_non_nullable
              as List<UserStorageLimit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? username,
      String? email,
      String type,
      bool isActive,
      bool isAdmin,
      String createdAt,
      String updatedAt,
      List<UserGroup>? userGroups,
      String? fcmToken,
      List<UserStorageLimit> storageLimits});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? email = freezed,
    Object? type = null,
    Object? isActive = null,
    Object? isAdmin = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userGroups = freezed,
    Object? fcmToken = freezed,
    Object? storageLimits = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      userGroups: freezed == userGroups
          ? _value._userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<UserGroup>?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLimits: null == storageLimits
          ? _value._storageLimits
          : storageLimits // ignore: cast_nullable_to_non_nullable
              as List<UserStorageLimit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.type,
      required this.isActive,
      required this.isAdmin,
      required this.createdAt,
      required this.updatedAt,
      final List<UserGroup>? userGroups = const [],
      this.fcmToken,
      final List<UserStorageLimit> storageLimits = const []})
      : _userGroups = userGroups,
        _storageLimits = storageLimits,
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String type;
  @override
  final bool isActive;
  @override
  final bool isAdmin;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<UserGroup>? _userGroups;
  @override
  @JsonKey()
  List<UserGroup>? get userGroups {
    final value = _userGroups;
    if (value == null) return null;
    if (_userGroups is EqualUnmodifiableListView) return _userGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? fcmToken;
  final List<UserStorageLimit> _storageLimits;
  @override
  @JsonKey()
  List<UserStorageLimit> get storageLimits {
    if (_storageLimits is EqualUnmodifiableListView) return _storageLimits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storageLimits);
  }

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, type: $type, isActive: $isActive, isAdmin: $isAdmin, createdAt: $createdAt, updatedAt: $updatedAt, userGroups: $userGroups, fcmToken: $fcmToken, storageLimits: $storageLimits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._userGroups, _userGroups) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            const DeepCollectionEquality()
                .equals(other._storageLimits, _storageLimits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      type,
      isActive,
      isAdmin,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_userGroups),
      fcmToken,
      const DeepCollectionEquality().hash(_storageLimits));

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      required final String? username,
      required final String? email,
      required final String type,
      required final bool isActive,
      required final bool isAdmin,
      required final String createdAt,
      required final String updatedAt,
      final List<UserGroup>? userGroups,
      final String? fcmToken,
      final List<UserStorageLimit> storageLimits}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String get type;
  @override
  bool get isActive;
  @override
  bool get isAdmin;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<UserGroup>? get userGroups;
  @override
  String? get fcmToken;
  @override
  List<UserStorageLimit> get storageLimits;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

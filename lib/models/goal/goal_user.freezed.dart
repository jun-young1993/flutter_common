// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoalUser _$GoalUserFromJson(Map<String, dynamic> json) {
  return _GoalUser.fromJson(json);
}

/// @nodoc
mixin _$GoalUser {
  String get id => throw _privateConstructorUsedError;
  String get goalId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Serializes this GoalUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalUserCopyWith<GoalUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalUserCopyWith<$Res> {
  factory $GoalUserCopyWith(GoalUser value, $Res Function(GoalUser) then) =
      _$GoalUserCopyWithImpl<$Res, GoalUser>;
  @useResult
  $Res call({String id, String goalId, String userId, bool isAdmin, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$GoalUserCopyWithImpl<$Res, $Val extends GoalUser>
    implements $GoalUserCopyWith<$Res> {
  _$GoalUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalId = null,
    Object? userId = null,
    Object? isAdmin = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of GoalUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoalUserImplCopyWith<$Res>
    implements $GoalUserCopyWith<$Res> {
  factory _$$GoalUserImplCopyWith(
          _$GoalUserImpl value, $Res Function(_$GoalUserImpl) then) =
      __$$GoalUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String goalId, String userId, bool isAdmin, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$GoalUserImplCopyWithImpl<$Res>
    extends _$GoalUserCopyWithImpl<$Res, _$GoalUserImpl>
    implements _$$GoalUserImplCopyWith<$Res> {
  __$$GoalUserImplCopyWithImpl(
      _$GoalUserImpl _value, $Res Function(_$GoalUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalId = null,
    Object? userId = null,
    Object? isAdmin = null,
    Object? user = null,
  }) {
    return _then(_$GoalUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalUserImpl extends _GoalUser {
  const _$GoalUserImpl(
      {required this.id,
      required this.goalId,
      required this.userId,
      required this.isAdmin,
      required this.user})
      : super._();

  factory _$GoalUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalUserImplFromJson(json);

  @override
  final String id;
  @override
  final String goalId;
  @override
  final String userId;
  @override
  final bool isAdmin;
  @override
  final User user;

  @override
  String toString() {
    return 'GoalUser(id: $id, goalId: $goalId, userId: $userId, isAdmin: $isAdmin, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, goalId, userId, isAdmin, user);

  /// Create a copy of GoalUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalUserImplCopyWith<_$GoalUserImpl> get copyWith =>
      __$$GoalUserImplCopyWithImpl<_$GoalUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalUserImplToJson(
      this,
    );
  }
}

abstract class _GoalUser extends GoalUser {
  const factory _GoalUser(
      {required final String id,
      required final String goalId,
      required final String userId,
      required final bool isAdmin,
      required final User user}) = _$GoalUserImpl;
  const _GoalUser._() : super._();

  factory _GoalUser.fromJson(Map<String, dynamic> json) =
      _$GoalUserImpl.fromJson;

  @override
  String get id;
  @override
  String get goalId;
  @override
  String get userId;
  @override
  bool get isAdmin;
  @override
  User get user;

  /// Create a copy of GoalUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalUserImplCopyWith<_$GoalUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Verification _$VerificationFromJson(Map<String, dynamic> json) {
  return _Verification.fromJson(json);
}

/// @nodoc
mixin _$Verification {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Verification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationCopyWith<Verification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCopyWith<$Res> {
  factory $VerificationCopyWith(
          Verification value, $Res Function(Verification) then) =
      _$VerificationCopyWithImpl<$Res, Verification>;
  @useResult
  $Res call(
      {String id,
      String email,
      String code,
      bool isVerified,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$VerificationCopyWithImpl<$Res, $Val extends Verification>
    implements $VerificationCopyWith<$Res> {
  _$VerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? code = null,
    Object? isVerified = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$VerificationImplCopyWith<$Res>
    implements $VerificationCopyWith<$Res> {
  factory _$$VerificationImplCopyWith(
          _$VerificationImpl value, $Res Function(_$VerificationImpl) then) =
      __$$VerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String code,
      bool isVerified,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$VerificationImplCopyWithImpl<$Res>
    extends _$VerificationCopyWithImpl<$Res, _$VerificationImpl>
    implements _$$VerificationImplCopyWith<$Res> {
  __$$VerificationImplCopyWithImpl(
      _$VerificationImpl _value, $Res Function(_$VerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? code = null,
    Object? isVerified = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$VerificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$VerificationImpl extends _Verification {
  const _$VerificationImpl(
      {required this.id,
      required this.email,
      required this.code,
      required this.isVerified,
      required this.expiresAt,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$VerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String code;
  @override
  final bool isVerified;
  @override
  final DateTime expiresAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Verification(id: $id, email: $email, code: $code, isVerified: $isVerified, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, code, isVerified,
      expiresAt, createdAt, updatedAt);

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationImplCopyWith<_$VerificationImpl> get copyWith =>
      __$$VerificationImplCopyWithImpl<_$VerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationImplToJson(
      this,
    );
  }
}

abstract class _Verification extends Verification {
  const factory _Verification(
      {required final String id,
      required final String email,
      required final String code,
      required final bool isVerified,
      required final DateTime expiresAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$VerificationImpl;
  const _Verification._() : super._();

  factory _Verification.fromJson(Map<String, dynamic> json) =
      _$VerificationImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get code;
  @override
  bool get isVerified;
  @override
  DateTime get expiresAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationImplCopyWith<_$VerificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

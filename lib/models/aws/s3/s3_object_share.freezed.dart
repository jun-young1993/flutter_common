// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_object_share.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

S3ObjectShare _$S3ObjectShareFromJson(Map<String, dynamic> json) {
  return _S3ObjectShare.fromJson(json);
}

/// @nodoc
mixin _$S3ObjectShare {
  String get id => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  String? get shareCode => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get getShareUrl => throw _privateConstructorUsedError;

  /// Serializes this S3ObjectShare to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3ObjectShare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ObjectShareCopyWith<S3ObjectShare> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ObjectShareCopyWith<$Res> {
  factory $S3ObjectShareCopyWith(
          S3ObjectShare value, $Res Function(S3ObjectShare) then) =
      _$S3ObjectShareCopyWithImpl<$Res, S3ObjectShare>;
  @useResult
  $Res call(
      {String id,
      String? originalName,
      DateTime? expiredAt,
      String? shareCode,
      String? title,
      String? description,
      String getShareUrl});
}

/// @nodoc
class _$S3ObjectShareCopyWithImpl<$Res, $Val extends S3ObjectShare>
    implements $S3ObjectShareCopyWith<$Res> {
  _$S3ObjectShareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3ObjectShare
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalName = freezed,
    Object? expiredAt = freezed,
    Object? shareCode = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? getShareUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shareCode: freezed == shareCode
          ? _value.shareCode
          : shareCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      getShareUrl: null == getShareUrl
          ? _value.getShareUrl
          : getShareUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ObjectShareImplCopyWith<$Res>
    implements $S3ObjectShareCopyWith<$Res> {
  factory _$$S3ObjectShareImplCopyWith(
          _$S3ObjectShareImpl value, $Res Function(_$S3ObjectShareImpl) then) =
      __$$S3ObjectShareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? originalName,
      DateTime? expiredAt,
      String? shareCode,
      String? title,
      String? description,
      String getShareUrl});
}

/// @nodoc
class __$$S3ObjectShareImplCopyWithImpl<$Res>
    extends _$S3ObjectShareCopyWithImpl<$Res, _$S3ObjectShareImpl>
    implements _$$S3ObjectShareImplCopyWith<$Res> {
  __$$S3ObjectShareImplCopyWithImpl(
      _$S3ObjectShareImpl _value, $Res Function(_$S3ObjectShareImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3ObjectShare
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalName = freezed,
    Object? expiredAt = freezed,
    Object? shareCode = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? getShareUrl = null,
  }) {
    return _then(_$S3ObjectShareImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shareCode: freezed == shareCode
          ? _value.shareCode
          : shareCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      getShareUrl: null == getShareUrl
          ? _value.getShareUrl
          : getShareUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ObjectShareImpl extends _S3ObjectShare {
  const _$S3ObjectShareImpl(
      {required this.id,
      this.originalName = null,
      this.expiredAt = null,
      this.shareCode = null,
      this.title = null,
      this.description = null,
      required this.getShareUrl})
      : super._();

  factory _$S3ObjectShareImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ObjectShareImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String? originalName;
  @override
  @JsonKey()
  final DateTime? expiredAt;
  @override
  @JsonKey()
  final String? shareCode;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  final String getShareUrl;

  @override
  String toString() {
    return 'S3ObjectShare(id: $id, originalName: $originalName, expiredAt: $expiredAt, shareCode: $shareCode, title: $title, description: $description, getShareUrl: $getShareUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ObjectShareImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.shareCode, shareCode) ||
                other.shareCode == shareCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.getShareUrl, getShareUrl) ||
                other.getShareUrl == getShareUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, originalName, expiredAt,
      shareCode, title, description, getShareUrl);

  /// Create a copy of S3ObjectShare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ObjectShareImplCopyWith<_$S3ObjectShareImpl> get copyWith =>
      __$$S3ObjectShareImplCopyWithImpl<_$S3ObjectShareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ObjectShareImplToJson(
      this,
    );
  }
}

abstract class _S3ObjectShare extends S3ObjectShare {
  const factory _S3ObjectShare(
      {required final String id,
      final String? originalName,
      final DateTime? expiredAt,
      final String? shareCode,
      final String? title,
      final String? description,
      required final String getShareUrl}) = _$S3ObjectShareImpl;
  const _S3ObjectShare._() : super._();

  factory _S3ObjectShare.fromJson(Map<String, dynamic> json) =
      _$S3ObjectShareImpl.fromJson;

  @override
  String get id;
  @override
  String? get originalName;
  @override
  DateTime? get expiredAt;
  @override
  String? get shareCode;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String get getShareUrl;

  /// Create a copy of S3ObjectShare
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ObjectShareImplCopyWith<_$S3ObjectShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

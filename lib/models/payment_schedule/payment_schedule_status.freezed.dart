// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_schedule_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentScheduleStatus _$PaymentScheduleStatusFromJson(
    Map<String, dynamic> json) {
  return _PaymentScheduleStatus.fromJson(json);
}

/// @nodoc
mixin _$PaymentScheduleStatus {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this PaymentScheduleStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentScheduleStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentScheduleStatusCopyWith<PaymentScheduleStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentScheduleStatusCopyWith<$Res> {
  factory $PaymentScheduleStatusCopyWith(PaymentScheduleStatus value,
          $Res Function(PaymentScheduleStatus) then) =
      _$PaymentScheduleStatusCopyWithImpl<$Res, PaymentScheduleStatus>;
  @useResult
  $Res call({String key, String value, String? description});
}

/// @nodoc
class _$PaymentScheduleStatusCopyWithImpl<$Res,
        $Val extends PaymentScheduleStatus>
    implements $PaymentScheduleStatusCopyWith<$Res> {
  _$PaymentScheduleStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentScheduleStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentScheduleStatusImplCopyWith<$Res>
    implements $PaymentScheduleStatusCopyWith<$Res> {
  factory _$$PaymentScheduleStatusImplCopyWith(
          _$PaymentScheduleStatusImpl value,
          $Res Function(_$PaymentScheduleStatusImpl) then) =
      __$$PaymentScheduleStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value, String? description});
}

/// @nodoc
class __$$PaymentScheduleStatusImplCopyWithImpl<$Res>
    extends _$PaymentScheduleStatusCopyWithImpl<$Res,
        _$PaymentScheduleStatusImpl>
    implements _$$PaymentScheduleStatusImplCopyWith<$Res> {
  __$$PaymentScheduleStatusImplCopyWithImpl(_$PaymentScheduleStatusImpl _value,
      $Res Function(_$PaymentScheduleStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? description = freezed,
  }) {
    return _then(_$PaymentScheduleStatusImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentScheduleStatusImpl implements _PaymentScheduleStatus {
  const _$PaymentScheduleStatusImpl(
      {required this.key, required this.value, this.description});

  factory _$PaymentScheduleStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentScheduleStatusImplFromJson(json);

  @override
  final String key;
  @override
  final String value;
  @override
  final String? description;

  @override
  String toString() {
    return 'PaymentScheduleStatus(key: $key, value: $value, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentScheduleStatusImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, description);

  /// Create a copy of PaymentScheduleStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentScheduleStatusImplCopyWith<_$PaymentScheduleStatusImpl>
      get copyWith => __$$PaymentScheduleStatusImplCopyWithImpl<
          _$PaymentScheduleStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentScheduleStatusImplToJson(
      this,
    );
  }
}

abstract class _PaymentScheduleStatus implements PaymentScheduleStatus {
  const factory _PaymentScheduleStatus(
      {required final String key,
      required final String value,
      final String? description}) = _$PaymentScheduleStatusImpl;

  factory _PaymentScheduleStatus.fromJson(Map<String, dynamic> json) =
      _$PaymentScheduleStatusImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  String? get description;

  /// Create a copy of PaymentScheduleStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentScheduleStatusImplCopyWith<_$PaymentScheduleStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

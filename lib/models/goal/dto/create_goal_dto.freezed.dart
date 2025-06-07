// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_goal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateGoalDto _$CreateGoalDtoFromJson(Map<String, dynamic> json) {
  return _CreateGoalDto.fromJson(json);
}

/// @nodoc
mixin _$CreateGoalDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this CreateGoalDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGoalDtoCopyWith<CreateGoalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoalDtoCopyWith<$Res> {
  factory $CreateGoalDtoCopyWith(
          CreateGoalDto value, $Res Function(CreateGoalDto) then) =
      _$CreateGoalDtoCopyWithImpl<$Res, CreateGoalDto>;
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      String userId,
      bool isCompleted});
}

/// @nodoc
class _$CreateGoalDtoCopyWithImpl<$Res, $Val extends CreateGoalDto>
    implements $CreateGoalDtoCopyWith<$Res> {
  _$CreateGoalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? userId = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGoalDtoImplCopyWith<$Res>
    implements $CreateGoalDtoCopyWith<$Res> {
  factory _$$CreateGoalDtoImplCopyWith(
          _$CreateGoalDtoImpl value, $Res Function(_$CreateGoalDtoImpl) then) =
      __$$CreateGoalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      String userId,
      bool isCompleted});
}

/// @nodoc
class __$$CreateGoalDtoImplCopyWithImpl<$Res>
    extends _$CreateGoalDtoCopyWithImpl<$Res, _$CreateGoalDtoImpl>
    implements _$$CreateGoalDtoImplCopyWith<$Res> {
  __$$CreateGoalDtoImplCopyWithImpl(
      _$CreateGoalDtoImpl _value, $Res Function(_$CreateGoalDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? userId = null,
    Object? isCompleted = null,
  }) {
    return _then(_$CreateGoalDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGoalDtoImpl implements _CreateGoalDto {
  const _$CreateGoalDtoImpl(
      {required this.title,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.userId,
      this.isCompleted = false});

  factory _$CreateGoalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGoalDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String userId;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'CreateGoalDto(title: $title, description: $description, startDate: $startDate, endDate: $endDate, userId: $userId, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoalDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, startDate, endDate, userId, isCompleted);

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoalDtoImplCopyWith<_$CreateGoalDtoImpl> get copyWith =>
      __$$CreateGoalDtoImplCopyWithImpl<_$CreateGoalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGoalDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateGoalDto implements CreateGoalDto {
  const factory _CreateGoalDto(
      {required final String title,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String userId,
      final bool isCompleted}) = _$CreateGoalDtoImpl;

  factory _CreateGoalDto.fromJson(Map<String, dynamic> json) =
      _$CreateGoalDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get userId;
  @override
  bool get isCompleted;

  /// Create a copy of CreateGoalDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGoalDtoImplCopyWith<_$CreateGoalDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

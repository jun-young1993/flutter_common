// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_goal_progress_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateGoalProgressDto _$CreateGoalProgressDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateGoalProgressDto.fromJson(json);
}

/// @nodoc
mixin _$CreateGoalProgressDto {
  DateTime get date => throw _privateConstructorUsedError;
  String get goalUserId => throw _privateConstructorUsedError;
  String get goalId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this CreateGoalProgressDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateGoalProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGoalProgressDtoCopyWith<CreateGoalProgressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoalProgressDtoCopyWith<$Res> {
  factory $CreateGoalProgressDtoCopyWith(CreateGoalProgressDto value,
          $Res Function(CreateGoalProgressDto) then) =
      _$CreateGoalProgressDtoCopyWithImpl<$Res, CreateGoalProgressDto>;
  @useResult
  $Res call(
      {DateTime date,
      String goalUserId,
      String goalId,
      String? title,
      String? description,
      bool isCompleted});
}

/// @nodoc
class _$CreateGoalProgressDtoCopyWithImpl<$Res,
        $Val extends CreateGoalProgressDto>
    implements $CreateGoalProgressDtoCopyWith<$Res> {
  _$CreateGoalProgressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGoalProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? goalUserId = null,
    Object? goalId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goalUserId: null == goalUserId
          ? _value.goalUserId
          : goalUserId // ignore: cast_nullable_to_non_nullable
              as String,
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGoalProgressDtoImplCopyWith<$Res>
    implements $CreateGoalProgressDtoCopyWith<$Res> {
  factory _$$CreateGoalProgressDtoImplCopyWith(
          _$CreateGoalProgressDtoImpl value,
          $Res Function(_$CreateGoalProgressDtoImpl) then) =
      __$$CreateGoalProgressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String goalUserId,
      String goalId,
      String? title,
      String? description,
      bool isCompleted});
}

/// @nodoc
class __$$CreateGoalProgressDtoImplCopyWithImpl<$Res>
    extends _$CreateGoalProgressDtoCopyWithImpl<$Res,
        _$CreateGoalProgressDtoImpl>
    implements _$$CreateGoalProgressDtoImplCopyWith<$Res> {
  __$$CreateGoalProgressDtoImplCopyWithImpl(_$CreateGoalProgressDtoImpl _value,
      $Res Function(_$CreateGoalProgressDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateGoalProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? goalUserId = null,
    Object? goalId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$CreateGoalProgressDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goalUserId: null == goalUserId
          ? _value.goalUserId
          : goalUserId // ignore: cast_nullable_to_non_nullable
              as String,
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGoalProgressDtoImpl implements _CreateGoalProgressDto {
  const _$CreateGoalProgressDtoImpl(
      {required this.date,
      required this.goalUserId,
      required this.goalId,
      this.title,
      this.description,
      this.isCompleted = false});

  factory _$CreateGoalProgressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGoalProgressDtoImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String goalUserId;
  @override
  final String goalId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'CreateGoalProgressDto(date: $date, goalUserId: $goalUserId, goalId: $goalId, title: $title, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoalProgressDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.goalUserId, goalUserId) ||
                other.goalUserId == goalUserId) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, goalUserId, goalId, title, description, isCompleted);

  /// Create a copy of CreateGoalProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoalProgressDtoImplCopyWith<_$CreateGoalProgressDtoImpl>
      get copyWith => __$$CreateGoalProgressDtoImplCopyWithImpl<
          _$CreateGoalProgressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGoalProgressDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateGoalProgressDto implements CreateGoalProgressDto {
  const factory _CreateGoalProgressDto(
      {required final DateTime date,
      required final String goalUserId,
      required final String goalId,
      final String? title,
      final String? description,
      final bool isCompleted}) = _$CreateGoalProgressDtoImpl;

  factory _CreateGoalProgressDto.fromJson(Map<String, dynamic> json) =
      _$CreateGoalProgressDtoImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get goalUserId;
  @override
  String get goalId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  bool get isCompleted;

  /// Create a copy of CreateGoalProgressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGoalProgressDtoImplCopyWith<_$CreateGoalProgressDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeGroup _$NoticeGroupFromJson(Map<String, dynamic> json) {
  return _NoticeGroup.fromJson(json);
}

/// @nodoc
mixin _$NoticeGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Notice>? get notices => throw _privateConstructorUsedError;

  /// Serializes this NoticeGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoticeGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeGroupCopyWith<NoticeGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeGroupCopyWith<$Res> {
  factory $NoticeGroupCopyWith(
          NoticeGroup value, $Res Function(NoticeGroup) then) =
      _$NoticeGroupCopyWithImpl<$Res, NoticeGroup>;
  @useResult
  $Res call({String id, String name, List<Notice>? notices});
}

/// @nodoc
class _$NoticeGroupCopyWithImpl<$Res, $Val extends NoticeGroup>
    implements $NoticeGroupCopyWith<$Res> {
  _$NoticeGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? notices = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notices: freezed == notices
          ? _value.notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeGroupImplCopyWith<$Res>
    implements $NoticeGroupCopyWith<$Res> {
  factory _$$NoticeGroupImplCopyWith(
          _$NoticeGroupImpl value, $Res Function(_$NoticeGroupImpl) then) =
      __$$NoticeGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Notice>? notices});
}

/// @nodoc
class __$$NoticeGroupImplCopyWithImpl<$Res>
    extends _$NoticeGroupCopyWithImpl<$Res, _$NoticeGroupImpl>
    implements _$$NoticeGroupImplCopyWith<$Res> {
  __$$NoticeGroupImplCopyWithImpl(
      _$NoticeGroupImpl _value, $Res Function(_$NoticeGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? notices = freezed,
  }) {
    return _then(_$NoticeGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notices: freezed == notices
          ? _value._notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<Notice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeGroupImpl extends _NoticeGroup {
  const _$NoticeGroupImpl(
      {required this.id,
      required this.name,
      final List<Notice>? notices = const []})
      : _notices = notices,
        super._();

  factory _$NoticeGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeGroupImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Notice>? _notices;
  @override
  @JsonKey()
  List<Notice>? get notices {
    final value = _notices;
    if (value == null) return null;
    if (_notices is EqualUnmodifiableListView) return _notices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NoticeGroup(id: $id, name: $name, notices: $notices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._notices, _notices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_notices));

  /// Create a copy of NoticeGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeGroupImplCopyWith<_$NoticeGroupImpl> get copyWith =>
      __$$NoticeGroupImplCopyWithImpl<_$NoticeGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeGroupImplToJson(
      this,
    );
  }
}

abstract class _NoticeGroup extends NoticeGroup {
  const factory _NoticeGroup(
      {required final String id,
      required final String name,
      final List<Notice>? notices}) = _$NoticeGroupImpl;
  const _NoticeGroup._() : super._();

  factory _NoticeGroup.fromJson(Map<String, dynamic> json) =
      _$NoticeGroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Notice>? get notices;

  /// Create a copy of NoticeGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeGroupImplCopyWith<_$NoticeGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

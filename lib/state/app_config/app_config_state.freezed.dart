// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppConfigState {
  String get key => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isUpdateAvailable => throw _privateConstructorUsedError;
  String get appleId => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigStateCopyWith<AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res, AppConfigState>;
  @useResult
  $Res call(
      {String key,
      String version,
      String description,
      bool isUpdateAvailable,
      String appleId,
      String packageName});
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res, $Val extends AppConfigState>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? version = null,
    Object? description = null,
    Object? isUpdateAvailable = null,
    Object? appleId = null,
    Object? packageName = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdateAvailable: null == isUpdateAvailable
          ? _value.isUpdateAvailable
          : isUpdateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      appleId: null == appleId
          ? _value.appleId
          : appleId // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigStateImplCopyWith<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  factory _$$AppConfigStateImplCopyWith(_$AppConfigStateImpl value,
          $Res Function(_$AppConfigStateImpl) then) =
      __$$AppConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String version,
      String description,
      bool isUpdateAvailable,
      String appleId,
      String packageName});
}

/// @nodoc
class __$$AppConfigStateImplCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$AppConfigStateImpl>
    implements _$$AppConfigStateImplCopyWith<$Res> {
  __$$AppConfigStateImplCopyWithImpl(
      _$AppConfigStateImpl _value, $Res Function(_$AppConfigStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? version = null,
    Object? description = null,
    Object? isUpdateAvailable = null,
    Object? appleId = null,
    Object? packageName = null,
  }) {
    return _then(_$AppConfigStateImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdateAvailable: null == isUpdateAvailable
          ? _value.isUpdateAvailable
          : isUpdateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      appleId: null == appleId
          ? _value.appleId
          : appleId // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppConfigStateImpl implements _AppConfigState {
  const _$AppConfigStateImpl(
      {this.key = "",
      this.version = "0.0.0",
      this.description = "",
      this.isUpdateAvailable = false,
      this.appleId = "",
      this.packageName = ""});

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isUpdateAvailable;
  @override
  @JsonKey()
  final String appleId;
  @override
  @JsonKey()
  final String packageName;

  @override
  String toString() {
    return 'AppConfigState(key: $key, version: $version, description: $description, isUpdateAvailable: $isUpdateAvailable, appleId: $appleId, packageName: $packageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigStateImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isUpdateAvailable, isUpdateAvailable) ||
                other.isUpdateAvailable == isUpdateAvailable) &&
            (identical(other.appleId, appleId) || other.appleId == appleId) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, version, description,
      isUpdateAvailable, appleId, packageName);

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigStateImplCopyWith<_$AppConfigStateImpl> get copyWith =>
      __$$AppConfigStateImplCopyWithImpl<_$AppConfigStateImpl>(
          this, _$identity);
}

abstract class _AppConfigState implements AppConfigState {
  const factory _AppConfigState(
      {final String key,
      final String version,
      final String description,
      final bool isUpdateAvailable,
      final String appleId,
      final String packageName}) = _$AppConfigStateImpl;

  @override
  String get key;
  @override
  String get version;
  @override
  String get description;
  @override
  bool get isUpdateAvailable;
  @override
  String get appleId;
  @override
  String get packageName;

  /// Create a copy of AppConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigStateImplCopyWith<_$AppConfigStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

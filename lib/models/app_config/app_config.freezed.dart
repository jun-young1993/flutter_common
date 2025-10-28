// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) {
  return _AppConfig.fromJson(json);
}

/// @nodoc
mixin _$AppConfig {
  String get key => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isUpdateAvailable => throw _privateConstructorUsedError;
  String get appleId => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String? get appStoreUrl => throw _privateConstructorUsedError;
  String? get googlePlayUrl => throw _privateConstructorUsedError;

  /// Serializes this AppConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res, AppConfig>;
  @useResult
  $Res call(
      {String key,
      String version,
      String description,
      bool isUpdateAvailable,
      String appleId,
      String packageName,
      String? appStoreUrl,
      String? googlePlayUrl});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res, $Val extends AppConfig>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfig
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
    Object? appStoreUrl = freezed,
    Object? googlePlayUrl = freezed,
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
      appStoreUrl: freezed == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlayUrl: freezed == googlePlayUrl
          ? _value.googlePlayUrl
          : googlePlayUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigImplCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$$AppConfigImplCopyWith(
          _$AppConfigImpl value, $Res Function(_$AppConfigImpl) then) =
      __$$AppConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String version,
      String description,
      bool isUpdateAvailable,
      String appleId,
      String packageName,
      String? appStoreUrl,
      String? googlePlayUrl});
}

/// @nodoc
class __$$AppConfigImplCopyWithImpl<$Res>
    extends _$AppConfigCopyWithImpl<$Res, _$AppConfigImpl>
    implements _$$AppConfigImplCopyWith<$Res> {
  __$$AppConfigImplCopyWithImpl(
      _$AppConfigImpl _value, $Res Function(_$AppConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfig
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
    Object? appStoreUrl = freezed,
    Object? googlePlayUrl = freezed,
  }) {
    return _then(_$AppConfigImpl(
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
      appStoreUrl: freezed == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      googlePlayUrl: freezed == googlePlayUrl
          ? _value.googlePlayUrl
          : googlePlayUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppConfigImpl extends _AppConfig {
  const _$AppConfigImpl(
      {required this.key,
      required this.version,
      this.description = "",
      this.isUpdateAvailable = false,
      this.appleId = "",
      this.packageName = "",
      this.appStoreUrl = null,
      this.googlePlayUrl = null})
      : super._();

  factory _$AppConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppConfigImplFromJson(json);

  @override
  final String key;
  @override
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
  @JsonKey()
  final String? appStoreUrl;
  @override
  @JsonKey()
  final String? googlePlayUrl;

  @override
  String toString() {
    return 'AppConfig(key: $key, version: $version, description: $description, isUpdateAvailable: $isUpdateAvailable, appleId: $appleId, packageName: $packageName, appStoreUrl: $appStoreUrl, googlePlayUrl: $googlePlayUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isUpdateAvailable, isUpdateAvailable) ||
                other.isUpdateAvailable == isUpdateAvailable) &&
            (identical(other.appleId, appleId) || other.appleId == appleId) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.googlePlayUrl, googlePlayUrl) ||
                other.googlePlayUrl == googlePlayUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, version, description,
      isUpdateAvailable, appleId, packageName, appStoreUrl, googlePlayUrl);

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      __$$AppConfigImplCopyWithImpl<_$AppConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConfigImplToJson(
      this,
    );
  }
}

abstract class _AppConfig extends AppConfig {
  const factory _AppConfig(
      {required final String key,
      required final String version,
      final String description,
      final bool isUpdateAvailable,
      final String appleId,
      final String packageName,
      final String? appStoreUrl,
      final String? googlePlayUrl}) = _$AppConfigImpl;
  const _AppConfig._() : super._();

  factory _AppConfig.fromJson(Map<String, dynamic> json) =
      _$AppConfigImpl.fromJson;

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
  @override
  String? get appStoreUrl;
  @override
  String? get googlePlayUrl;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

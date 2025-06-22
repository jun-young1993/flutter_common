// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mcp_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$McpConfigState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  Map<McpApiKeys, String> get apiKeys => throw _privateConstructorUsedError;
  McpApiKeys? get selectedApiKey => throw _privateConstructorUsedError;
  List<Tool> get tools => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  /// Create a copy of McpConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $McpConfigStateCopyWith<McpConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McpConfigStateCopyWith<$Res> {
  factory $McpConfigStateCopyWith(
          McpConfigState value, $Res Function(McpConfigState) then) =
      _$McpConfigStateCopyWithImpl<$Res, McpConfigState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      Map<McpApiKeys, String> apiKeys,
      McpApiKeys? selectedApiKey,
      List<Tool> tools,
      bool isConnected});

  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$McpConfigStateCopyWithImpl<$Res, $Val extends McpConfigState>
    implements $McpConfigStateCopyWith<$Res> {
  _$McpConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of McpConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? apiKeys = null,
    Object? selectedApiKey = freezed,
    Object? tools = null,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      apiKeys: null == apiKeys
          ? _value.apiKeys
          : apiKeys // ignore: cast_nullable_to_non_nullable
              as Map<McpApiKeys, String>,
      selectedApiKey: freezed == selectedApiKey
          ? _value.selectedApiKey
          : selectedApiKey // ignore: cast_nullable_to_non_nullable
              as McpApiKeys?,
      tools: null == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of McpConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$McpConfigStateImplCopyWith<$Res>
    implements $McpConfigStateCopyWith<$Res> {
  factory _$$McpConfigStateImplCopyWith(_$McpConfigStateImpl value,
          $Res Function(_$McpConfigStateImpl) then) =
      __$$McpConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      Map<McpApiKeys, String> apiKeys,
      McpApiKeys? selectedApiKey,
      List<Tool> tools,
      bool isConnected});

  @override
  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$McpConfigStateImplCopyWithImpl<$Res>
    extends _$McpConfigStateCopyWithImpl<$Res, _$McpConfigStateImpl>
    implements _$$McpConfigStateImplCopyWith<$Res> {
  __$$McpConfigStateImplCopyWithImpl(
      _$McpConfigStateImpl _value, $Res Function(_$McpConfigStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? apiKeys = null,
    Object? selectedApiKey = freezed,
    Object? tools = null,
    Object? isConnected = null,
  }) {
    return _then(_$McpConfigStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      apiKeys: null == apiKeys
          ? _value._apiKeys
          : apiKeys // ignore: cast_nullable_to_non_nullable
              as Map<McpApiKeys, String>,
      selectedApiKey: freezed == selectedApiKey
          ? _value.selectedApiKey
          : selectedApiKey // ignore: cast_nullable_to_non_nullable
              as McpApiKeys?,
      tools: null == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$McpConfigStateImpl extends _McpConfigState {
  const _$McpConfigStateImpl(
      {this.isLoading = false,
      this.error = null,
      final Map<McpApiKeys, String> apiKeys = const {},
      this.selectedApiKey = null,
      final List<Tool> tools = const [],
      this.isConnected = false})
      : _apiKeys = apiKeys,
        _tools = tools,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  final Map<McpApiKeys, String> _apiKeys;
  @override
  @JsonKey()
  Map<McpApiKeys, String> get apiKeys {
    if (_apiKeys is EqualUnmodifiableMapView) return _apiKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_apiKeys);
  }

  @override
  @JsonKey()
  final McpApiKeys? selectedApiKey;
  final List<Tool> _tools;
  @override
  @JsonKey()
  List<Tool> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  @JsonKey()
  final bool isConnected;

  @override
  String toString() {
    return 'McpConfigState(isLoading: $isLoading, error: $error, apiKeys: $apiKeys, selectedApiKey: $selectedApiKey, tools: $tools, isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$McpConfigStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._apiKeys, _apiKeys) &&
            (identical(other.selectedApiKey, selectedApiKey) ||
                other.selectedApiKey == selectedApiKey) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      const DeepCollectionEquality().hash(_apiKeys),
      selectedApiKey,
      const DeepCollectionEquality().hash(_tools),
      isConnected);

  /// Create a copy of McpConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$McpConfigStateImplCopyWith<_$McpConfigStateImpl> get copyWith =>
      __$$McpConfigStateImplCopyWithImpl<_$McpConfigStateImpl>(
          this, _$identity);
}

abstract class _McpConfigState extends McpConfigState {
  const factory _McpConfigState(
      {final bool isLoading,
      final AppException? error,
      final Map<McpApiKeys, String> apiKeys,
      final McpApiKeys? selectedApiKey,
      final List<Tool> tools,
      final bool isConnected}) = _$McpConfigStateImpl;
  const _McpConfigState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  Map<McpApiKeys, String> get apiKeys;
  @override
  McpApiKeys? get selectedApiKey;
  @override
  List<Tool> get tools;
  @override
  bool get isConnected;

  /// Create a copy of McpConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$McpConfigStateImplCopyWith<_$McpConfigStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mcp_config_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$McpConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(McpApiKeys key, String value) setApiKey,
    required TResult Function(McpApiKeys key) clearApiKey,
    required TResult Function(McpApiKeys key) selectApiKey,
    required TResult Function(String toolName, bool isEnabled) toggleTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(McpApiKeys key, String value)? setApiKey,
    TResult? Function(McpApiKeys key)? clearApiKey,
    TResult? Function(McpApiKeys key)? selectApiKey,
    TResult? Function(String toolName, bool isEnabled)? toggleTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(McpApiKeys key, String value)? setApiKey,
    TResult Function(McpApiKeys key)? clearApiKey,
    TResult Function(McpApiKeys key)? selectApiKey,
    TResult Function(String toolName, bool isEnabled)? toggleTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SetApiKey value) setApiKey,
    required TResult Function(ClearApiKey value) clearApiKey,
    required TResult Function(SelectApiKey value) selectApiKey,
    required TResult Function(ToggleTool value) toggleTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SetApiKey value)? setApiKey,
    TResult? Function(ClearApiKey value)? clearApiKey,
    TResult? Function(SelectApiKey value)? selectApiKey,
    TResult? Function(ToggleTool value)? toggleTool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SetApiKey value)? setApiKey,
    TResult Function(ClearApiKey value)? clearApiKey,
    TResult Function(SelectApiKey value)? selectApiKey,
    TResult Function(ToggleTool value)? toggleTool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McpConfigEventCopyWith<$Res> {
  factory $McpConfigEventCopyWith(
          McpConfigEvent value, $Res Function(McpConfigEvent) then) =
      _$McpConfigEventCopyWithImpl<$Res, McpConfigEvent>;
}

/// @nodoc
class _$McpConfigEventCopyWithImpl<$Res, $Val extends McpConfigEvent>
    implements $McpConfigEventCopyWith<$Res> {
  _$McpConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$McpConfigEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'McpConfigEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(McpApiKeys key, String value) setApiKey,
    required TResult Function(McpApiKeys key) clearApiKey,
    required TResult Function(McpApiKeys key) selectApiKey,
    required TResult Function(String toolName, bool isEnabled) toggleTool,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(McpApiKeys key, String value)? setApiKey,
    TResult? Function(McpApiKeys key)? clearApiKey,
    TResult? Function(McpApiKeys key)? selectApiKey,
    TResult? Function(String toolName, bool isEnabled)? toggleTool,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(McpApiKeys key, String value)? setApiKey,
    TResult Function(McpApiKeys key)? clearApiKey,
    TResult Function(McpApiKeys key)? selectApiKey,
    TResult Function(String toolName, bool isEnabled)? toggleTool,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SetApiKey value) setApiKey,
    required TResult Function(ClearApiKey value) clearApiKey,
    required TResult Function(SelectApiKey value) selectApiKey,
    required TResult Function(ToggleTool value) toggleTool,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SetApiKey value)? setApiKey,
    TResult? Function(ClearApiKey value)? clearApiKey,
    TResult? Function(SelectApiKey value)? selectApiKey,
    TResult? Function(ToggleTool value)? toggleTool,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SetApiKey value)? setApiKey,
    TResult Function(ClearApiKey value)? clearApiKey,
    TResult Function(SelectApiKey value)? selectApiKey,
    TResult Function(ToggleTool value)? toggleTool,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements McpConfigEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SetApiKeyImplCopyWith<$Res> {
  factory _$$SetApiKeyImplCopyWith(
          _$SetApiKeyImpl value, $Res Function(_$SetApiKeyImpl) then) =
      __$$SetApiKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({McpApiKeys key, String value});
}

/// @nodoc
class __$$SetApiKeyImplCopyWithImpl<$Res>
    extends _$McpConfigEventCopyWithImpl<$Res, _$SetApiKeyImpl>
    implements _$$SetApiKeyImplCopyWith<$Res> {
  __$$SetApiKeyImplCopyWithImpl(
      _$SetApiKeyImpl _value, $Res Function(_$SetApiKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$SetApiKeyImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as McpApiKeys,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetApiKeyImpl implements SetApiKey {
  const _$SetApiKeyImpl(this.key, this.value);

  @override
  final McpApiKeys key;
  @override
  final String value;

  @override
  String toString() {
    return 'McpConfigEvent.setApiKey(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetApiKeyImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetApiKeyImplCopyWith<_$SetApiKeyImpl> get copyWith =>
      __$$SetApiKeyImplCopyWithImpl<_$SetApiKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(McpApiKeys key, String value) setApiKey,
    required TResult Function(McpApiKeys key) clearApiKey,
    required TResult Function(McpApiKeys key) selectApiKey,
    required TResult Function(String toolName, bool isEnabled) toggleTool,
  }) {
    return setApiKey(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(McpApiKeys key, String value)? setApiKey,
    TResult? Function(McpApiKeys key)? clearApiKey,
    TResult? Function(McpApiKeys key)? selectApiKey,
    TResult? Function(String toolName, bool isEnabled)? toggleTool,
  }) {
    return setApiKey?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(McpApiKeys key, String value)? setApiKey,
    TResult Function(McpApiKeys key)? clearApiKey,
    TResult Function(McpApiKeys key)? selectApiKey,
    TResult Function(String toolName, bool isEnabled)? toggleTool,
    required TResult orElse(),
  }) {
    if (setApiKey != null) {
      return setApiKey(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SetApiKey value) setApiKey,
    required TResult Function(ClearApiKey value) clearApiKey,
    required TResult Function(SelectApiKey value) selectApiKey,
    required TResult Function(ToggleTool value) toggleTool,
  }) {
    return setApiKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SetApiKey value)? setApiKey,
    TResult? Function(ClearApiKey value)? clearApiKey,
    TResult? Function(SelectApiKey value)? selectApiKey,
    TResult? Function(ToggleTool value)? toggleTool,
  }) {
    return setApiKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SetApiKey value)? setApiKey,
    TResult Function(ClearApiKey value)? clearApiKey,
    TResult Function(SelectApiKey value)? selectApiKey,
    TResult Function(ToggleTool value)? toggleTool,
    required TResult orElse(),
  }) {
    if (setApiKey != null) {
      return setApiKey(this);
    }
    return orElse();
  }
}

abstract class SetApiKey implements McpConfigEvent {
  const factory SetApiKey(final McpApiKeys key, final String value) =
      _$SetApiKeyImpl;

  McpApiKeys get key;
  String get value;

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetApiKeyImplCopyWith<_$SetApiKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearApiKeyImplCopyWith<$Res> {
  factory _$$ClearApiKeyImplCopyWith(
          _$ClearApiKeyImpl value, $Res Function(_$ClearApiKeyImpl) then) =
      __$$ClearApiKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({McpApiKeys key});
}

/// @nodoc
class __$$ClearApiKeyImplCopyWithImpl<$Res>
    extends _$McpConfigEventCopyWithImpl<$Res, _$ClearApiKeyImpl>
    implements _$$ClearApiKeyImplCopyWith<$Res> {
  __$$ClearApiKeyImplCopyWithImpl(
      _$ClearApiKeyImpl _value, $Res Function(_$ClearApiKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$ClearApiKeyImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as McpApiKeys,
    ));
  }
}

/// @nodoc

class _$ClearApiKeyImpl implements ClearApiKey {
  const _$ClearApiKeyImpl(this.key);

  @override
  final McpApiKeys key;

  @override
  String toString() {
    return 'McpConfigEvent.clearApiKey(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearApiKeyImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearApiKeyImplCopyWith<_$ClearApiKeyImpl> get copyWith =>
      __$$ClearApiKeyImplCopyWithImpl<_$ClearApiKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(McpApiKeys key, String value) setApiKey,
    required TResult Function(McpApiKeys key) clearApiKey,
    required TResult Function(McpApiKeys key) selectApiKey,
    required TResult Function(String toolName, bool isEnabled) toggleTool,
  }) {
    return clearApiKey(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(McpApiKeys key, String value)? setApiKey,
    TResult? Function(McpApiKeys key)? clearApiKey,
    TResult? Function(McpApiKeys key)? selectApiKey,
    TResult? Function(String toolName, bool isEnabled)? toggleTool,
  }) {
    return clearApiKey?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(McpApiKeys key, String value)? setApiKey,
    TResult Function(McpApiKeys key)? clearApiKey,
    TResult Function(McpApiKeys key)? selectApiKey,
    TResult Function(String toolName, bool isEnabled)? toggleTool,
    required TResult orElse(),
  }) {
    if (clearApiKey != null) {
      return clearApiKey(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SetApiKey value) setApiKey,
    required TResult Function(ClearApiKey value) clearApiKey,
    required TResult Function(SelectApiKey value) selectApiKey,
    required TResult Function(ToggleTool value) toggleTool,
  }) {
    return clearApiKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SetApiKey value)? setApiKey,
    TResult? Function(ClearApiKey value)? clearApiKey,
    TResult? Function(SelectApiKey value)? selectApiKey,
    TResult? Function(ToggleTool value)? toggleTool,
  }) {
    return clearApiKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SetApiKey value)? setApiKey,
    TResult Function(ClearApiKey value)? clearApiKey,
    TResult Function(SelectApiKey value)? selectApiKey,
    TResult Function(ToggleTool value)? toggleTool,
    required TResult orElse(),
  }) {
    if (clearApiKey != null) {
      return clearApiKey(this);
    }
    return orElse();
  }
}

abstract class ClearApiKey implements McpConfigEvent {
  const factory ClearApiKey(final McpApiKeys key) = _$ClearApiKeyImpl;

  McpApiKeys get key;

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearApiKeyImplCopyWith<_$ClearApiKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectApiKeyImplCopyWith<$Res> {
  factory _$$SelectApiKeyImplCopyWith(
          _$SelectApiKeyImpl value, $Res Function(_$SelectApiKeyImpl) then) =
      __$$SelectApiKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({McpApiKeys key});
}

/// @nodoc
class __$$SelectApiKeyImplCopyWithImpl<$Res>
    extends _$McpConfigEventCopyWithImpl<$Res, _$SelectApiKeyImpl>
    implements _$$SelectApiKeyImplCopyWith<$Res> {
  __$$SelectApiKeyImplCopyWithImpl(
      _$SelectApiKeyImpl _value, $Res Function(_$SelectApiKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$SelectApiKeyImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as McpApiKeys,
    ));
  }
}

/// @nodoc

class _$SelectApiKeyImpl implements SelectApiKey {
  const _$SelectApiKeyImpl(this.key);

  @override
  final McpApiKeys key;

  @override
  String toString() {
    return 'McpConfigEvent.selectApiKey(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectApiKeyImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectApiKeyImplCopyWith<_$SelectApiKeyImpl> get copyWith =>
      __$$SelectApiKeyImplCopyWithImpl<_$SelectApiKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(McpApiKeys key, String value) setApiKey,
    required TResult Function(McpApiKeys key) clearApiKey,
    required TResult Function(McpApiKeys key) selectApiKey,
    required TResult Function(String toolName, bool isEnabled) toggleTool,
  }) {
    return selectApiKey(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(McpApiKeys key, String value)? setApiKey,
    TResult? Function(McpApiKeys key)? clearApiKey,
    TResult? Function(McpApiKeys key)? selectApiKey,
    TResult? Function(String toolName, bool isEnabled)? toggleTool,
  }) {
    return selectApiKey?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(McpApiKeys key, String value)? setApiKey,
    TResult Function(McpApiKeys key)? clearApiKey,
    TResult Function(McpApiKeys key)? selectApiKey,
    TResult Function(String toolName, bool isEnabled)? toggleTool,
    required TResult orElse(),
  }) {
    if (selectApiKey != null) {
      return selectApiKey(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SetApiKey value) setApiKey,
    required TResult Function(ClearApiKey value) clearApiKey,
    required TResult Function(SelectApiKey value) selectApiKey,
    required TResult Function(ToggleTool value) toggleTool,
  }) {
    return selectApiKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SetApiKey value)? setApiKey,
    TResult? Function(ClearApiKey value)? clearApiKey,
    TResult? Function(SelectApiKey value)? selectApiKey,
    TResult? Function(ToggleTool value)? toggleTool,
  }) {
    return selectApiKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SetApiKey value)? setApiKey,
    TResult Function(ClearApiKey value)? clearApiKey,
    TResult Function(SelectApiKey value)? selectApiKey,
    TResult Function(ToggleTool value)? toggleTool,
    required TResult orElse(),
  }) {
    if (selectApiKey != null) {
      return selectApiKey(this);
    }
    return orElse();
  }
}

abstract class SelectApiKey implements McpConfigEvent {
  const factory SelectApiKey(final McpApiKeys key) = _$SelectApiKeyImpl;

  McpApiKeys get key;

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectApiKeyImplCopyWith<_$SelectApiKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleToolImplCopyWith<$Res> {
  factory _$$ToggleToolImplCopyWith(
          _$ToggleToolImpl value, $Res Function(_$ToggleToolImpl) then) =
      __$$ToggleToolImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String toolName, bool isEnabled});
}

/// @nodoc
class __$$ToggleToolImplCopyWithImpl<$Res>
    extends _$McpConfigEventCopyWithImpl<$Res, _$ToggleToolImpl>
    implements _$$ToggleToolImplCopyWith<$Res> {
  __$$ToggleToolImplCopyWithImpl(
      _$ToggleToolImpl _value, $Res Function(_$ToggleToolImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolName = null,
    Object? isEnabled = null,
  }) {
    return _then(_$ToggleToolImpl(
      null == toolName
          ? _value.toolName
          : toolName // ignore: cast_nullable_to_non_nullable
              as String,
      null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleToolImpl implements ToggleTool {
  const _$ToggleToolImpl(this.toolName, this.isEnabled);

  @override
  final String toolName;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'McpConfigEvent.toggleTool(toolName: $toolName, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleToolImpl &&
            (identical(other.toolName, toolName) ||
                other.toolName == toolName) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toolName, isEnabled);

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleToolImplCopyWith<_$ToggleToolImpl> get copyWith =>
      __$$ToggleToolImplCopyWithImpl<_$ToggleToolImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(McpApiKeys key, String value) setApiKey,
    required TResult Function(McpApiKeys key) clearApiKey,
    required TResult Function(McpApiKeys key) selectApiKey,
    required TResult Function(String toolName, bool isEnabled) toggleTool,
  }) {
    return toggleTool(toolName, isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(McpApiKeys key, String value)? setApiKey,
    TResult? Function(McpApiKeys key)? clearApiKey,
    TResult? Function(McpApiKeys key)? selectApiKey,
    TResult? Function(String toolName, bool isEnabled)? toggleTool,
  }) {
    return toggleTool?.call(toolName, isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(McpApiKeys key, String value)? setApiKey,
    TResult Function(McpApiKeys key)? clearApiKey,
    TResult Function(McpApiKeys key)? selectApiKey,
    TResult Function(String toolName, bool isEnabled)? toggleTool,
    required TResult orElse(),
  }) {
    if (toggleTool != null) {
      return toggleTool(toolName, isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SetApiKey value) setApiKey,
    required TResult Function(ClearApiKey value) clearApiKey,
    required TResult Function(SelectApiKey value) selectApiKey,
    required TResult Function(ToggleTool value) toggleTool,
  }) {
    return toggleTool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SetApiKey value)? setApiKey,
    TResult? Function(ClearApiKey value)? clearApiKey,
    TResult? Function(SelectApiKey value)? selectApiKey,
    TResult? Function(ToggleTool value)? toggleTool,
  }) {
    return toggleTool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SetApiKey value)? setApiKey,
    TResult Function(ClearApiKey value)? clearApiKey,
    TResult Function(SelectApiKey value)? selectApiKey,
    TResult Function(ToggleTool value)? toggleTool,
    required TResult orElse(),
  }) {
    if (toggleTool != null) {
      return toggleTool(this);
    }
    return orElse();
  }
}

abstract class ToggleTool implements McpConfigEvent {
  const factory ToggleTool(final String toolName, final bool isEnabled) =
      _$ToggleToolImpl;

  String get toolName;
  bool get isEnabled;

  /// Create a copy of McpConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleToolImplCopyWith<_$ToggleToolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mcp_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$McpChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  McpApiKeys get selectedApiKey => throw _privateConstructorUsedError;
  bool get isApiKeySet => throw _privateConstructorUsedError;
  bool get isConnectionHealthy => throw _privateConstructorUsedError;

  /// Create a copy of McpChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $McpChatStateCopyWith<McpChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McpChatStateCopyWith<$Res> {
  factory $McpChatStateCopyWith(
          McpChatState value, $Res Function(McpChatState) then) =
      _$McpChatStateCopyWithImpl<$Res, McpChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      List<ChatMessage> messages,
      McpApiKeys selectedApiKey,
      bool isApiKeySet,
      bool isConnectionHealthy});

  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$McpChatStateCopyWithImpl<$Res, $Val extends McpChatState>
    implements $McpChatStateCopyWith<$Res> {
  _$McpChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of McpChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? messages = null,
    Object? selectedApiKey = null,
    Object? isApiKeySet = null,
    Object? isConnectionHealthy = null,
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
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      selectedApiKey: null == selectedApiKey
          ? _value.selectedApiKey
          : selectedApiKey // ignore: cast_nullable_to_non_nullable
              as McpApiKeys,
      isApiKeySet: null == isApiKeySet
          ? _value.isApiKeySet
          : isApiKeySet // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnectionHealthy: null == isConnectionHealthy
          ? _value.isConnectionHealthy
          : isConnectionHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of McpChatState
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
abstract class _$$McpChatStateImplCopyWith<$Res>
    implements $McpChatStateCopyWith<$Res> {
  factory _$$McpChatStateImplCopyWith(
          _$McpChatStateImpl value, $Res Function(_$McpChatStateImpl) then) =
      __$$McpChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppException? error,
      List<ChatMessage> messages,
      McpApiKeys selectedApiKey,
      bool isApiKeySet,
      bool isConnectionHealthy});

  @override
  $AppExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$McpChatStateImplCopyWithImpl<$Res>
    extends _$McpChatStateCopyWithImpl<$Res, _$McpChatStateImpl>
    implements _$$McpChatStateImplCopyWith<$Res> {
  __$$McpChatStateImplCopyWithImpl(
      _$McpChatStateImpl _value, $Res Function(_$McpChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? messages = null,
    Object? selectedApiKey = null,
    Object? isApiKeySet = null,
    Object? isConnectionHealthy = null,
  }) {
    return _then(_$McpChatStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      selectedApiKey: null == selectedApiKey
          ? _value.selectedApiKey
          : selectedApiKey // ignore: cast_nullable_to_non_nullable
              as McpApiKeys,
      isApiKeySet: null == isApiKeySet
          ? _value.isApiKeySet
          : isApiKeySet // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnectionHealthy: null == isConnectionHealthy
          ? _value.isConnectionHealthy
          : isConnectionHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$McpChatStateImpl extends _McpChatState {
  const _$McpChatStateImpl(
      {this.isLoading = false,
      this.error = null,
      final List<ChatMessage> messages = const [],
      this.selectedApiKey = McpApiKeys.anthropic,
      this.isApiKeySet = false,
      this.isConnectionHealthy = false})
      : _messages = messages,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AppException? error;
  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final McpApiKeys selectedApiKey;
  @override
  @JsonKey()
  final bool isApiKeySet;
  @override
  @JsonKey()
  final bool isConnectionHealthy;

  @override
  String toString() {
    return 'McpChatState(isLoading: $isLoading, error: $error, messages: $messages, selectedApiKey: $selectedApiKey, isApiKeySet: $isApiKeySet, isConnectionHealthy: $isConnectionHealthy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$McpChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.selectedApiKey, selectedApiKey) ||
                other.selectedApiKey == selectedApiKey) &&
            (identical(other.isApiKeySet, isApiKeySet) ||
                other.isApiKeySet == isApiKeySet) &&
            (identical(other.isConnectionHealthy, isConnectionHealthy) ||
                other.isConnectionHealthy == isConnectionHealthy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      error,
      const DeepCollectionEquality().hash(_messages),
      selectedApiKey,
      isApiKeySet,
      isConnectionHealthy);

  /// Create a copy of McpChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$McpChatStateImplCopyWith<_$McpChatStateImpl> get copyWith =>
      __$$McpChatStateImplCopyWithImpl<_$McpChatStateImpl>(this, _$identity);
}

abstract class _McpChatState extends McpChatState {
  const factory _McpChatState(
      {final bool isLoading,
      final AppException? error,
      final List<ChatMessage> messages,
      final McpApiKeys selectedApiKey,
      final bool isApiKeySet,
      final bool isConnectionHealthy}) = _$McpChatStateImpl;
  const _McpChatState._() : super._();

  @override
  bool get isLoading;
  @override
  AppException? get error;
  @override
  List<ChatMessage> get messages;
  @override
  McpApiKeys get selectedApiKey;
  @override
  bool get isApiKeySet;
  @override
  bool get isConnectionHealthy;

  /// Create a copy of McpChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$McpChatStateImplCopyWith<_$McpChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

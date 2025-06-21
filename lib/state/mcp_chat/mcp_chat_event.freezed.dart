// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mcp_chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$McpChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) streamMessage,
    required TResult Function(String apiKey) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? streamMessage,
    TResult? Function(String apiKey)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? streamMessage,
    TResult Function(String apiKey)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(StreamMessage value) streamMessage,
    required TResult Function(Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(StreamMessage value)? streamMessage,
    TResult? Function(Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(StreamMessage value)? streamMessage,
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McpChatEventCopyWith<$Res> {
  factory $McpChatEventCopyWith(
          McpChatEvent value, $Res Function(McpChatEvent) then) =
      _$McpChatEventCopyWithImpl<$Res, McpChatEvent>;
}

/// @nodoc
class _$McpChatEventCopyWithImpl<$Res, $Val extends McpChatEvent>
    implements $McpChatEventCopyWith<$Res> {
  _$McpChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$McpChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'McpChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) streamMessage,
    required TResult Function(String apiKey) initialize,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? streamMessage,
    TResult? Function(String apiKey)? initialize,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? streamMessage,
    TResult Function(String apiKey)? initialize,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(StreamMessage value) streamMessage,
    required TResult Function(Initialize value) initialize,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(StreamMessage value)? streamMessage,
    TResult? Function(Initialize value)? initialize,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(StreamMessage value)? streamMessage,
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements McpChatEvent {
  const factory SendMessage(final ChatMessage message) = _$SendMessageImpl;

  ChatMessage get message;

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreamMessageImplCopyWith<$Res> {
  factory _$$StreamMessageImplCopyWith(
          _$StreamMessageImpl value, $Res Function(_$StreamMessageImpl) then) =
      __$$StreamMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$StreamMessageImplCopyWithImpl<$Res>
    extends _$McpChatEventCopyWithImpl<$Res, _$StreamMessageImpl>
    implements _$$StreamMessageImplCopyWith<$Res> {
  __$$StreamMessageImplCopyWithImpl(
      _$StreamMessageImpl _value, $Res Function(_$StreamMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StreamMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$StreamMessageImpl implements StreamMessage {
  const _$StreamMessageImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'McpChatEvent.streamMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamMessageImplCopyWith<_$StreamMessageImpl> get copyWith =>
      __$$StreamMessageImplCopyWithImpl<_$StreamMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) streamMessage,
    required TResult Function(String apiKey) initialize,
  }) {
    return streamMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? streamMessage,
    TResult? Function(String apiKey)? initialize,
  }) {
    return streamMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? streamMessage,
    TResult Function(String apiKey)? initialize,
    required TResult orElse(),
  }) {
    if (streamMessage != null) {
      return streamMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(StreamMessage value) streamMessage,
    required TResult Function(Initialize value) initialize,
  }) {
    return streamMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(StreamMessage value)? streamMessage,
    TResult? Function(Initialize value)? initialize,
  }) {
    return streamMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(StreamMessage value)? streamMessage,
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (streamMessage != null) {
      return streamMessage(this);
    }
    return orElse();
  }
}

abstract class StreamMessage implements McpChatEvent {
  const factory StreamMessage(final ChatMessage message) = _$StreamMessageImpl;

  ChatMessage get message;

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamMessageImplCopyWith<_$StreamMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$McpChatEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_$InitializeImpl(
      null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl(this.apiKey);

  @override
  final String apiKey;

  @override
  String toString() {
    return 'McpChatEvent.initialize(apiKey: $apiKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey);

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessage message) sendMessage,
    required TResult Function(ChatMessage message) streamMessage,
    required TResult Function(String apiKey) initialize,
  }) {
    return initialize(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessage message)? sendMessage,
    TResult? Function(ChatMessage message)? streamMessage,
    TResult? Function(String apiKey)? initialize,
  }) {
    return initialize?.call(apiKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessage message)? sendMessage,
    TResult Function(ChatMessage message)? streamMessage,
    TResult Function(String apiKey)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(apiKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(StreamMessage value) streamMessage,
    required TResult Function(Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(StreamMessage value)? streamMessage,
    TResult? Function(Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(StreamMessage value)? streamMessage,
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements McpChatEvent {
  const factory Initialize(final String apiKey) = _$InitializeImpl;

  String get apiKey;

  /// Create a copy of McpChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

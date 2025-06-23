// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessage {
  String get text => throw _privateConstructorUsedError;
  ChatMessageSenderType get senderType => throw _privateConstructorUsedError;
  List<LlmToolCall>? get toolCalls => throw _privateConstructorUsedError;
  LlmToolCall? get toolCall => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {String text,
      ChatMessageSenderType senderType,
      List<LlmToolCall>? toolCalls,
      LlmToolCall? toolCall,
      DateTime createdAt,
      String id,
      bool isLoading});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? senderType = null,
    Object? toolCalls = freezed,
    Object? toolCall = freezed,
    Object? createdAt = null,
    Object? id = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as ChatMessageSenderType,
      toolCalls: freezed == toolCalls
          ? _value.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<LlmToolCall>?,
      toolCall: freezed == toolCall
          ? _value.toolCall
          : toolCall // ignore: cast_nullable_to_non_nullable
              as LlmToolCall?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      ChatMessageSenderType senderType,
      List<LlmToolCall>? toolCalls,
      LlmToolCall? toolCall,
      DateTime createdAt,
      String id,
      bool isLoading});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? senderType = null,
    Object? toolCalls = freezed,
    Object? toolCall = freezed,
    Object? createdAt = null,
    Object? id = null,
    Object? isLoading = null,
  }) {
    return _then(_$ChatMessageImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as ChatMessageSenderType,
      toolCalls: freezed == toolCalls
          ? _value._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<LlmToolCall>?,
      toolCall: freezed == toolCall
          ? _value.toolCall
          : toolCall // ignore: cast_nullable_to_non_nullable
              as LlmToolCall?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatMessageImpl extends _ChatMessage {
  const _$ChatMessageImpl(
      {required this.text,
      required this.senderType,
      final List<LlmToolCall>? toolCalls = null,
      this.toolCall = null,
      required this.createdAt,
      required this.id,
      this.isLoading = false})
      : _toolCalls = toolCalls,
        super._();

  @override
  final String text;
  @override
  final ChatMessageSenderType senderType;
  final List<LlmToolCall>? _toolCalls;
  @override
  @JsonKey()
  List<LlmToolCall>? get toolCalls {
    final value = _toolCalls;
    if (value == null) return null;
    if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final LlmToolCall? toolCall;
  @override
  final DateTime createdAt;
  @override
  final String id;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ChatMessage(text: $text, senderType: $senderType, toolCalls: $toolCalls, toolCall: $toolCall, createdAt: $createdAt, id: $id, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls) &&
            (identical(other.toolCall, toolCall) ||
                other.toolCall == toolCall) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      senderType,
      const DeepCollectionEquality().hash(_toolCalls),
      toolCall,
      createdAt,
      id,
      isLoading);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(
      {required final String text,
      required final ChatMessageSenderType senderType,
      final List<LlmToolCall>? toolCalls,
      final LlmToolCall? toolCall,
      required final DateTime createdAt,
      required final String id,
      final bool isLoading}) = _$ChatMessageImpl;
  const _ChatMessage._() : super._();

  @override
  String get text;
  @override
  ChatMessageSenderType get senderType;
  @override
  List<LlmToolCall>? get toolCalls;
  @override
  LlmToolCall? get toolCall;
  @override
  DateTime get createdAt;
  @override
  String get id;
  @override
  bool get isLoading;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

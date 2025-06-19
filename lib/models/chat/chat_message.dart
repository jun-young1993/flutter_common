import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcp_llm/mcp_llm.dart';
import 'package:uuid/uuid.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String text,
    required ChatMessageSenderType senderType,
    @Default(null) List<LlmToolCall>? toolCalls,
    required DateTime createdAt,
    required String id,
    @Default(false) bool isLoading,
  }) = _ChatMessage;

  const ChatMessage._();

  bool get isUser => senderType == ChatMessageSenderType.user;

  ChatMessage addText(String text) => copyWith(text: this.text + text);
}

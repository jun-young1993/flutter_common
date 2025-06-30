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
    @Default(null) LlmToolCall? toolCall,
    required DateTime createdAt,
    required String id,
    @Default(false) bool isLoading,
  }) = _ChatMessage;

  const ChatMessage._();

  bool get isUser => senderType == ChatMessageSenderType.user;

  bool get isTool => senderType == ChatMessageSenderType.tool;

  bool get isAssistant => senderType == ChatMessageSenderType.assistant;

  bool equalToolCall(LlmToolCall toolCall) {
    if (this.toolCall == null) return false;
    return this.toolCall!.id == toolCall.id;
  }

  ChatMessage addText(String text) => copyWith(text: this.text + text);

  
}

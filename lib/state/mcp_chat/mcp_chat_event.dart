import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mcp_chat_event.freezed.dart';

@freezed
class McpChatEvent with _$McpChatEvent {
  const factory McpChatEvent.sendMessage(ChatMessage message) = SendMessage;
  const factory McpChatEvent.streamMessage(ChatMessage message) = StreamMessage;
  const factory McpChatEvent.initialize(String apiKey) = Initialize;
}

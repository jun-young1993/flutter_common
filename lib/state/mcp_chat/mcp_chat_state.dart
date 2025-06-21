import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mcp_chat_state.freezed.dart';

@freezed
class McpChatState with _$McpChatState, BaseStateMixin {
  const factory McpChatState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default([]) List<ChatMessage> messages,
    @Default(false) bool isConnected,
  }) = _McpChatState;

  const McpChatState._();
  factory McpChatState.initialize() => const McpChatState();
}

import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcp_client/mcp_client.dart';

part 'mcp_chat_state.freezed.dart';

@freezed
class McpChatState with _$McpChatState, BaseStateMixin {
  const factory McpChatState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default([]) List<ChatMessage> messages,
    @Default(McpApiKeys.anthropic) McpApiKeys selectedApiKey,
    @Default(false) bool isApiKeySet,
    @Default(false) bool isConnectionHealthy,
  }) = _McpChatState;

  const McpChatState._();
  factory McpChatState.initialize() => const McpChatState();
}

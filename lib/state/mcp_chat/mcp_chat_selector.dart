import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_state.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:mcp_client/mcp_client.dart';

class McpChatSelector<T> extends BlocSelector<McpChatBloc, McpChatState, T> {
  const McpChatSelector({
    Key? key,
    required T Function(McpChatState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class McpChatApiKeySelector
    extends BlocSelector<McpChatBloc, McpChatState, bool> {
  McpChatApiKeySelector(Widget Function(bool) builder, {super.key})
      : super(
          selector: (state) => state.isApiKeySet,
          builder: (_, isApiKeySet) => builder(isApiKeySet),
        );
}

class McpChatMessagesSelector
    extends BlocSelector<McpChatBloc, McpChatState, List<ChatMessage>> {
  McpChatMessagesSelector(Widget Function(List<ChatMessage>) builder,
      {super.key})
      : super(
          selector: (state) => state.messages,
          builder: (_, messages) => builder(messages),
        );
}

class McpChatApiKeyDropdownSelector
    extends BlocSelector<McpChatBloc, McpChatState, McpApiKeys> {
  McpChatApiKeyDropdownSelector(Widget Function(McpApiKeys) builder,
      {super.key})
      : super(
          selector: (state) => state.selectedApiKey,
          builder: (_, selectedApiKey) => builder(selectedApiKey),
        );
}

class McpChatInputFieldSelector
    extends BlocSelector<McpChatBloc, McpChatState, (McpApiKeys, bool, bool)> {
  McpChatInputFieldSelector(Widget Function(McpApiKeys, bool, bool) builder,
      {super.key})
      : super(
          selector: (state) => (
            state.selectedApiKey,
            state.isConnectionHealthy,
            state.isLoading,
          ),
          builder: (_, data) => builder(data.$1, data.$2, data.$3),
        );
}

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_state.dart';

class McpChatSelector<T> extends BlocSelector<McpChatBloc, McpChatState, T> {
  const McpChatSelector({
    Key? key,
    required T Function(McpChatState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class McpChatMessagesSelector extends McpChatSelector<List<ChatMessage>?> {
  McpChatMessagesSelector(Widget Function(List<ChatMessage>?) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.messages,
          builder: (context, messages) => builder(messages),
        );
}

class McpChatIsConnectedSelector extends McpChatSelector<bool> {
  McpChatIsConnectedSelector(Widget Function(bool) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.isConnected,
          builder: (context, isConnected) => builder(isConnected),
        );
}

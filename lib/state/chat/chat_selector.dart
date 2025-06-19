import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/state/chat/chat_bloc.dart';
import 'package:flutter_common/state/chat/chat_state.dart';

class ChatSelector<T> extends BlocSelector<ChatBloc, ChatState, T> {
  const ChatSelector({
    Key? key,
    required T Function(ChatState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class ChatMessagesSelector extends ChatSelector<List<ChatMessage>?> {
  ChatMessagesSelector(Widget Function(List<ChatMessage>?) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.messages,
          builder: (context, messages) => builder(messages),
        );
}

class ChatIsConnectedSelector extends ChatSelector<bool> {
  ChatIsConnectedSelector(Widget Function(bool) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.isConnected,
          builder: (context, isConnected) => builder(isConnected),
        );
}

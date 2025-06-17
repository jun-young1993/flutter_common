import 'package:flutter/material.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:flutter_common/widgets/ui/chat/chat_input_field.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.onSendMessage, this.messages});
  final List<ChatMessage>? messages;
  final Function(ChatMessage) onSendMessage;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _inputFocusNode = FocusNode();

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _inputFocusNode.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _textController.text;
    if (text.trim().isNotEmpty) {
      final messageToSend = text.trim();
      _textController.clear();
      final message = ChatMessage(
        text: messageToSend,
        senderType: ChatMessageSenderType.user,
        toolCalls: null,
        createdAt: DateTime.now(),
      );
      widget.onSendMessage(message);
      // Call the notifier method to send the message
      // ref.read(chatProvider.notifier).sendMessage(messageToSend);
    }
    // Refocus handled by listener on isLoading change
  }

  void _clearChat() {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Clear Chat?'),
          content: const Text(
            'Are you sure you want to clear the entire chat history? This cannot be undone.',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
              ),
              child: const Text('Clear Chat'),
              onPressed: () {
                // ref.read(chatProvider.notifier).clearChat(); // Call notifier
                Navigator.of(dialogContext).pop();
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (_inputFocusNode.context != null) {
                    _inputFocusNode.requestFocus();
                  }
                });
              },
            ),
          ],
        );
      },
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Watch the application layer notifier state
    // final chatState = ref.watch(chatProvider);
    // final mcpState = ref.watch(mcpClientProvider);
    // final serverConfigs = ref.watch(mcpServerListProvider);

    // final messages = chatState.displayMessages;
    // final isLoading = chatState.isLoading;
    // final isApiKeySet = chatState.isApiKeySet;
    // final connectedServerCount = mcpState.connectedServerCount;

    // --- Listeners ---

    // Auto-scroll on new messages
    // ref.listen(chatProvider.select((state) => state.displayMessages.length), (
    //   _,
    //   __,
    // ) {
    //   _scrollToBottom();
    // });

    // Refocus input when loading finishes
    // ref.listen(chatProvider.select((state) => state.isLoading), (
    //   bool? previous,
    //   bool next,
    // ) {
    //   if (previous == true && next == false) {
    //     // Loading finished
    //     WidgetsBinding.instance.addPostFrameCallback((_) {
    //       if (_inputFocusNode.context != null) {
    //         _inputFocusNode.requestFocus();
    //       }
    //     });
    //   }
    // });

    // --- Build UI ---
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Gemini Chat'),
            Spacer(),
            // McpConnectionCounter(connectedCount: connectedServerCount),
            SizedBox(width: 8),
          ],
        ),
        actions: [
          if (widget.messages?.isNotEmpty ?? false)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              tooltip: 'Clear Chat History',
              onPressed: _clearChat,
            ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Messages list
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(8.0),
              itemCount: widget.messages?.length ?? 0,
              itemBuilder: (context, index) {
                final message = widget.messages?[index];
                return MessageBubble(
                  message: message,
                  // serverConfigs: serverConfigs,
                );
              },
            ),
          ),

          // Chat input field at bottom
          ChatInputField(
            controller: _textController,
            focusNode: _inputFocusNode,
            // enabled: isApiKeySet && !isLoading,
            // isLoading: isLoading,
            // isApiKeySet: isApiKeySet,
            enabled: true,
            isLoading: false,
            isApiKeySet: true,
            onSend: _sendMessage,
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final ChatMessage message;
  // final List<McpServerConfig> serverConfigs;

  const MessageBubble({
    super.key,
    required this.message,
    // required this.serverConfigs,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUser = message.isUser;

    Widget messageContent;
    List<Widget> children = [];

    // Render text or markdown
    if (isUser) {
      messageContent = SelectableText(message.text);
    } else {
      // Handle potential Markdown rendering errors gracefully
      try {
        messageContent = MarkdownBody(data: message.text, selectable: true);
      } catch (e) {
        debugPrint("Markdown rendering error: $e");
        messageContent = SelectableText(
          "Error rendering message content.\n\n${message.text}",
        );
      }
    }
    children.add(messageContent);

    // Add tool call information if present
    if (!isUser && message.toolName != null) {
      children.add(const Divider(height: 10, thickness: 0.5));

      // // Try to use pre-fetched name, otherwise look up from configs
      // String serverDisplayName = message.sourceServerName ??
      //     serverConfigs
      //         .firstWhereOrNull((s) => s.id == message.sourceServerId)
      //         ?.name ??
      //     (message.sourceServerId != null
      //         ? 'Server ${message.sourceServerId!.substring(0, 6)}...'
      //         : 'Unknown Server');

      // String toolSourceInfo =
      //     "Tool Called: ${message.toolName} (on $serverDisplayName)";

      // children.add(
      //   Padding(
      //     padding: const EdgeInsets.only(top: 4.0),
      //     child: Text(
      //       toolSourceInfo,
      //       style: TextStyle(
      //         fontSize: 11,
      //         fontStyle: FontStyle.italic,
      //         color: theme.colorScheme.onSecondaryContainer.withAlpha(204),
      //       ),
      //     ),
      //   ),
      // );
    }

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
        decoration: BoxDecoration(
          color: isUser
              ? theme.colorScheme.primaryContainer
              : theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}

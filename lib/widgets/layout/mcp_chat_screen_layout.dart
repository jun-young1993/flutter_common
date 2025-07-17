import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_event.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_selector.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_event.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_selector.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:flutter_common/widgets/dialogs/index.dart';
import 'package:flutter_common/widgets/loader/thinking_animation.dart';
import 'package:flutter_common/widgets/ui/chat/chat_input_field.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:mcp_llm/mcp_llm.dart';
import 'package:uuid/uuid.dart';

class McpChatScreenLayout extends StatefulWidget {
  const McpChatScreenLayout(
      {super.key,
      required this.onSendMessage,
      this.messages,
      this.onSettingsPressed,
      this.settingIcon});
  final List<ChatMessage>? messages;
  final Function(ChatMessage) onSendMessage;
  final Function()? onSettingsPressed;
  final IconData? settingIcon;

  @override
  State<McpChatScreenLayout> createState() => _McpChatScreenLayoutState();
}

class _McpChatScreenLayoutState extends State<McpChatScreenLayout> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _inputFocusNode = FocusNode();
  McpChatBloc get chatBloc => context.read<McpChatBloc>();
  McpConfigBloc get mcpConfigBloc => context.read<McpConfigBloc>();
  @override
  void initState() {
    super.initState();

    mcpConfigBloc.add(const McpConfigEvent.initialize());
  }

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
        id: const Uuid().v4(),
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
        title: Row(
          children: [
            McpConfigSelectedApiKeySelector(
              (selectedApiKey) {
                return DropdownButton<McpApiKeys>(
                  value: selectedApiKey,
                  onChanged: (McpApiKeys? newValue) {
                    if (newValue != null) {
                      mcpConfigBloc.add(McpConfigEvent.selectApiKey(newValue));
                    }
                  },
                  items: McpApiKeys.values
                      .map<DropdownMenuItem<McpApiKeys>>((McpApiKeys value) {
                    return DropdownMenuItem<McpApiKeys>(
                      value: value,
                      child: Text(value.name),
                    );
                  }).toList(),
                );
              },
            ),
            const SizedBox(width: 8),
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
            icon: Icon(widget.settingIcon ?? Icons.settings),
            tooltip: 'Settings',
            onPressed: widget.onSettingsPressed,
          ),
        ],
      ),
      body: Column(
        children: [
          McpConfigErrorSelector((error) {
            final theme = Theme.of(context);
            if (error == const AppException.notFoundMcpApiKey()) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest
                      .withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: theme.colorScheme.outline.withOpacity(0.3)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.key_off_outlined,
                      size: 48,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    McpConfigSelectedApiKeySelector((apiKey) {
                      if (apiKey == null) {
                        return const SizedBox.shrink();
                      }
                      return Text(
                        Tr.chat.apiKeyInstruction
                            .tr(namedArgs: {'apiKeyName': apiKey.name}),
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      );
                    }),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.settings_outlined),
                      label: Text(Tr.chat.goToApiKeySettings.tr()),
                      onPressed: widget.onSettingsPressed,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        textStyle: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              );
            }
            return const SizedBox.shrink();
          }),
          // Messages list
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(8.0),
              itemCount: widget.messages?.length ?? 0,
              itemBuilder: (context, index) {
                final message = widget.messages?[index];
                return MessageBubble(
                  message: message!,
                  // serverConfigs: serverConfigs,
                );
              },
            ),
          ),
          McpConfigIsConnectedSelector(
              (isConnected) => McpConfigSelectedApiKeySelector((apiKey) {
                    if (apiKey == null) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return ChatInputField(
                      controller: _textController,
                      focusNode: _inputFocusNode,
                      enabled: isConnected,
                      isConnected: isConnected,
                      apiKey: apiKey,
                      // isLoading: isLoading,
                      // isApiKeySet: isApiKeySet,
                      isLoading: false,
                      isApiKeySet: true,
                      onSend: _sendMessage,
                    );
                  })),
          // Chat input field at bottom
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool fitContent;
  // final List<McpServerConfig> serverConfigs;

  const MessageBubble({
    super.key,
    required this.message,
    this.fitContent = false,
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
    debugPrint('message:123 ${message.toolCalls?.map((e) => e.toJson())}');
    children.add(messageContent);

    // Add tool calls information if present and not loading
    if (!isUser &&
        message.toolCalls != null &&
        message.toolCalls!.isNotEmpty &&
        message.isLoading == false) {
      children.add(const SizedBox(height: 12));
      children.add(_buildToolCallsSection(context, message.toolCalls!));
    }
    // Add tool call information if present
    // if (!isUser && message.toolName != null) {
    // children.add(const Divider(height: 10, thickness: 0.5));

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
    // }

    final bubble = Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
      decoration: BoxDecoration(
        color: message.isLoading == true
            ? null
            : isUser
                ? theme.colorScheme.primary.withOpacity(0.4)
                : theme.colorScheme.secondary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: fitContent ? MainAxisSize.min : MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...children,
          if (message.isLoading == true)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: ThinkingAnimation(
                text: message.toolCalls != null
                    ? Tr.chat.usingTool.tr()
                    : Tr.chat.thinking.tr(),
              ),
            ),
        ],
      ),
    );

    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: bubble,
        ),
      ],
    );
  }

  /// 툴 호출 정보를 표시하는 위젯을 빌드합니다
  Widget _buildToolCallsSection(
      BuildContext context, List<LlmToolCall> toolCalls) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.colorScheme.outline.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.build_outlined,
                size: 16,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 4),
              Text(
                '사용된 도구 (${toolCalls.length}개)',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: toolCalls.map((toolCall) {
              return InkWell(
                onTap: () => ToolArgumentsDialog.show(context, toolCall),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(0.3),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.touch_app_outlined,
                        size: 14,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        toolCall.name,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_event.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_state.dart';
import 'package:mcp_client/mcp_client.dart';
import 'package:uuid/uuid.dart';

class McpChatBloc extends BaseBloc<McpChatEvent, McpChatState> {
  final LlmClientRepository llmClientRepository;
  McpChatBloc(this.llmClientRepository) : super(McpChatState.initialize()) {
    on<McpChatEvent>((event, emit) async {
      await event.map(
        sendMessage: (e) async {
          await handleEvent(emit, () async {
            final llmMessage = ChatMessage(
              id: const Uuid().v4(),
              text: '',
              senderType: ChatMessageSenderType.assistant,
              createdAt: DateTime.now(),
              isLoading: true,
            );

            emit(state.copyWith(messages: [
              ...(state.messages ?? []),
              ...[e.message, llmMessage]
            ]));
            final response =
                await llmClientRepository.chatWithToolsUse(e.message.text);
            debugPrint('response: ${response.toolCalls}');
            debugPrint('response: ${response.text}');
            final newMessages = state.messages
                .map((e) => e.id == llmMessage.id
                    ? e.copyWith(
                        text:
                            "${response.text}\n\n 사용한 도구들: ${response.toolCalls?.map((e) => e.name).join('\n')}",
                        toolCalls: response.toolCalls,
                        isLoading: false)
                    : e)
                .toList();
            emit(state.copyWith(messages: newMessages));
          });
        },
        streamMessage: (e) async {
          await handleEvent(emit, () async {
            final llmMessage = ChatMessage(
              id: const Uuid().v4(),
              text: '',
              senderType: ChatMessageSenderType.assistant,
              createdAt: DateTime.now(),
              isLoading: true,
            );

            emit(state.copyWith(messages: [
              ...(state.messages ?? []),
              ...[e.message, llmMessage]
            ]));

            await llmClientRepository.streamChatWithToolUse(e.message.text,
                onData: (data, textChunk) async {
              final newMessages = state.messages
                  .map(
                      (e) => e.id == llmMessage.id ? e.copyWith(text: data) : e)
                  .toList();
              emit(state.copyWith(messages: newMessages));
            }, onToolCalls: (toolCalls) async {
              for (final toolCall in toolCalls) {
                final useIngToolMessage = ChatMessage(
                  id: const Uuid().v4(),
                  text: '${toolCall.name} Using tool',
                  senderType: ChatMessageSenderType.tool,
                  createdAt: DateTime.now(),
                  toolCall: toolCall,
                  isLoading: true,
                );
                final isToolCall = state.messages.any((message) {
                  return !(message.toolCall?.id == toolCall.id);
                });
                if (!isToolCall) {
                  emit(state.copyWith(
                      messages: [...(state.messages), useIngToolMessage]));
                }
              }
            }, onDone: () async {
              final newMessages = state.messages
                  .map((e) =>
                      e.id == llmMessage.id ? e.copyWith(isLoading: false) : e)
                  .toList();
              emit(state.copyWith(messages: newMessages));
            });
          });
        },
        initialize: (e) async {},
      );
    });
  }

  @override
  McpChatState clearErrorState(McpChatState currentState) {
    return currentState.copyWith(error: null, isLoading: false);
  }

  @override
  bool hasError(McpChatState currentState) {
    // TODO: implement hasError
    return currentState.error != null;
  }

  @override
  McpChatState setErrorState(McpChatState currentState, AppException error) {
    // TODO: implement setErrorState
    return currentState.copyWith(error: error);
  }

  @override
  McpChatState setLoadingState(McpChatState currentState, bool isLoading) {
    // TODO: implement setLoadingState
    return currentState.copyWith(isLoading: isLoading);
  }
}

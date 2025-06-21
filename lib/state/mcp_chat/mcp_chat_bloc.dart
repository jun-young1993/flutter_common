import 'package:flutter/foundation.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_event.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_state.dart';
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
            final newMessages = state.messages
                .map((e) => e.id == llmMessage.id
                    ? e.copyWith(
                        text:
                            "${response.text}\n\n 사용한 도구들: ${response.toolCalls?.map((e) => e.toString()).join('\n')}",
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

            llmClientRepository.streamChatWithToolUse(e.message.text,
                onData: (data) {
              final newMessages = state.messages
                  .map((e) => e.id == llmMessage.id ? e.addText(data) : e)
                  .toList();
              emit(state.copyWith(messages: newMessages));
              debugPrint(DateTime.now().toString());
              debugPrint('ChatBloc on<ChatEvent.sendMessage><response> $data');
            }, onDone: () {
              final newMessages = state.messages
                  .map((e) =>
                      e.id == llmMessage.id ? e.copyWith(isLoading: false) : e)
                  .toList();
              emit(state.copyWith(messages: newMessages));
              debugPrint(DateTime.now().toString());
              debugPrint('ChatBloc on<ChatEvent.sendMessage><onDone>');
            });
          });
        },
        initialize: (e) async {
          await handleEvent(emit, () async {
            print('ChatBloc on<ChatEvent.initialize> ${e.apiKey}');
            await llmClientRepository
                .initialize(LlmClientRepositoryIntitializeConfig(
              llmConfig: LlmClientRepositoryIntitializeLlmConfig(
                  apiKey: e.apiKey,
                  mcpServerUrl: JunyConstants.mcpServerUrl,
                  mcpAuthToken: 'asdf'),
            ));
            bool isConnected = llmClientRepository.isConnected;
            emit(state.copyWith(isConnected: isConnected));
            print('ChatBloc on<ChatEvent.initialize> $isConnected');
            llmClientRepository.getTools();
            print('ChatBloc on<ChatEvent.initialize> $isConnected');
          });
        },
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

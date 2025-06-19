import 'package:flutter/foundation.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/chat/chat_event.dart';
import 'package:flutter_common/state/chat/chat_state.dart';
import 'package:uuid/uuid.dart';

class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  final LlmClientRepository llmClientRepository;
  ChatBloc(this.llmClientRepository) : super(ChatState.initialize()) {
    on<ChatEvent>((event, emit) async {
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
            return;

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
            await llmClientRepository
                .initialize(LlmClientRepositoryIntitializeConfig(
              llmConfig: LlmClientRepositoryIntitializeLlmConfig(apiKey: ""),
            ));
            bool isConnected = llmClientRepository.isConnected;
            emit(state.copyWith(isConnected: isConnected));

            llmClientRepository.getTools();
            print('ChatBloc on<ChatEvent.initialize> $isConnected');
          });
        },
      );
    });
  }

  @override
  ChatState clearErrorState(ChatState currentState) {
    return currentState.copyWith(error: null, isLoading: false);
  }

  @override
  bool hasError(ChatState currentState) {
    // TODO: implement hasError
    return currentState.error != null;
  }

  @override
  ChatState setErrorState(ChatState currentState, AppException error) {
    // TODO: implement setErrorState
    return currentState.copyWith(error: error);
  }

  @override
  ChatState setLoadingState(ChatState currentState, bool isLoading) {
    // TODO: implement setLoadingState
    return currentState.copyWith(isLoading: isLoading);
  }
}

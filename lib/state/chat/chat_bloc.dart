import 'package:flutter/foundation.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/chat/chat_event.dart';
import 'package:flutter_common/state/chat/chat_state.dart';

class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  final LlmClientRepository llmClientRepository;
  ChatBloc(this.llmClientRepository) : super(ChatState.initialize()) {
    on<ChatEvent>((event, emit) async {
      await event.map(
        sendMessage: (e) async {
          await handleEvent(emit, () async {
            emit(state
                .copyWith(messages: [...(state.messages ?? []), e.message]));
            await llmClientRepository.createMessage();
            debugPrint('ChatBloc on<ChatEvent.sendMessage> ${e.message}');
          });
          debugPrint('ChatBloc on<ChatEvent.sendMessage> ${e.message}');
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

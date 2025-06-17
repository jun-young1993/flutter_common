import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/chat/chat_event.dart';
import 'package:flutter_common/state/chat/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState.initialize()) {
    on<ChatEvent>((event, emit) async {
      await event.map(
        sendMessage: (event) async {
          debugPrint('ChatBloc on<ChatEvent.sendMessage> ${event.message}');
        },
      );
    });
  }
}

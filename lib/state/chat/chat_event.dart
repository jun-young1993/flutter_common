import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage(ChatMessage message) = SendMessage;
}

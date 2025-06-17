import 'package:flutter_common/models/chat/enum/chat_message_sender_type.enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage(
      {required String text,
      required ChatMessageSenderType senderType,
      required List<Map<String, dynamic>>? toolCalls,
      required DateTime createdAt}) = _ChatMessage;

  const ChatMessage._();
  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  bool get isUser => senderType == ChatMessageSenderType.user;
}

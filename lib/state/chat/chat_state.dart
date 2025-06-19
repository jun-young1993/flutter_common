import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/chat/chat_message.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState, BaseStateMixin {
  const factory ChatState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default([]) List<ChatMessage> messages,
    @Default(false) bool isConnected,
  }) = _ChatState;

  const ChatState._();
  factory ChatState.initialize() => const ChatState();
}

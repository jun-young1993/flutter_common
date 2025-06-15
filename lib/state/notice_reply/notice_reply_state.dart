import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/notice/notice_reply.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_reply_state.freezed.dart';

@freezed
class NoticeReplyState
    with _$NoticeReplyState, BaseStateMixin
    implements BaseState {
  const factory NoticeReplyState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default([]) List<NoticeReply> replies,
  }) = _NoticeReplyState;

  const NoticeReplyState._();

  factory NoticeReplyState.initialize() => const NoticeReplyState();
}

import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/repositories/notice_reply_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_event.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_state.dart';

class NoticeReplyBloc extends BaseBloc<NoticeReplyEvent, NoticeReplyState> {
  final NoticeReplyRepository noticeReplyRepository;

  NoticeReplyBloc({required this.noticeReplyRepository})
      : super(NoticeReplyState.initialize()) {
    on<NoticeReplyEvent>(
      (event, emit) async {
        await event.map(
          findAll: (e) async {
            emit(state.copyWith(replies: []));
            await handleEvent(emit, () async {
              final replies = await noticeReplyRepository.findAll(e.noticeId);
              emit(state.copyWith(replies: replies));
            });
          },
          add: (e) async {
            await handleEvent(emit, () async {
              await noticeReplyRepository.add(e.noticeId, e.content, e.userId);
              add(NoticeReplyEvent.findAll(e.noticeId));
            });
          },
          report: (e) async {
            await handleEvent(emit, () async {
              await noticeReplyRepository.report(
                  e.noticeReplyId, e.reporterId, e.type, e.comment);
            });
          },
        );
      },
    );
  }

  @override
  NoticeReplyState clearErrorState(NoticeReplyState currentState) {
    return currentState.copyWith(error: null, isLoading: false);
  }

  @override
  bool hasError(NoticeReplyState currentState) {
    // TODO: implement hasError
    return currentState.error != null;
  }

  @override
  NoticeReplyState setErrorState(
      NoticeReplyState currentState, AppException error) {
    // TODO: implement setErrorState
    return currentState.copyWith(error: error);
  }

  @override
  NoticeReplyState setLoadingState(
      NoticeReplyState currentState, bool isLoading) {
    // TODO: implement setLoadingState
    return currentState.copyWith(isLoading: isLoading);
  }
}

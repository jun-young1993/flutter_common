import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_reply_event.freezed.dart';

@freezed
class NoticeReplyEvent with _$NoticeReplyEvent {
  const factory NoticeReplyEvent.add(
      String noticeId, String content, String userId) = NoticeReplyAddEvent;
  const factory NoticeReplyEvent.findAll(String noticeId) =
      NoticeReplyFindAllEvent;
  const factory NoticeReplyEvent.report(String noticeReplyId, String reporterId,
      String type, String? comment) = Report;
}

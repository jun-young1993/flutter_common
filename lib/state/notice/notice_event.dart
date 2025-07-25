import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_event.freezed.dart';

@freezed
class NoticeEvent with _$NoticeEvent {
  const factory NoticeEvent.findAll(String name) = FindAll;
  const factory NoticeEvent.addSkip(String name) = AddSkip;
  const factory NoticeEvent.create(String title, String content, String type,
      String noticeGroupId, String userName) = Create;
  const factory NoticeEvent.report(
          String noticeId, String reporterId, String type, String? comment) =
      Report;
  const factory NoticeEvent.removeSuccessMessage() = RemoveSuccessMessage;
}

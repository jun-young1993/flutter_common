import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_group_event.freezed.dart';

@freezed
class NoticeGroupEvent with _$NoticeGroupEvent {
  const factory NoticeGroupEvent.findNoticeGroup(String name) =
      _FindNoticeGroup;
  const factory NoticeGroupEvent.createNoticeGroup(String name) =
      _CreateNoticeGroup;
  const factory NoticeGroupEvent.initialize(String name,
      {@Default(true) bool withNotices}) = _Initialize;
}

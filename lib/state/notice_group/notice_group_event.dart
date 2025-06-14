import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_group_event.freezed.dart';

@freezed
class NoticeGroupEvent with _$NoticeGroupEvent {
  const factory NoticeGroupEvent.findNoticeGroup(String name) =
      _FindNoticeGroup;
}

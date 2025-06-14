import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_event.freezed.dart';

@freezed
class NoticeEvent with _$NoticeEvent {
  const factory NoticeEvent.findAll(String name) = FindAll;
  const factory NoticeEvent.addSkip(String name) = AddSkip;
}

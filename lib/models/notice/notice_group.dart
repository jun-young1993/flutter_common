import 'package:flutter_common/models/notice/notice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_group.freezed.dart';
part 'notice_group.g.dart';

@freezed
class NoticeGroup with _$NoticeGroup {
  const factory NoticeGroup({
    required String id,
    required String name,
    @Default([]) List<Notice>? notices,
  }) = _NoticeGroup;

  const NoticeGroup._();
  factory NoticeGroup.fromJson(Map<String, dynamic> json) =>
      _$NoticeGroupFromJson(json);
}

import 'package:flutter_common/models/notice/notice_reply.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notice with _$Notice {
  const factory Notice({
    required String id,
    required String title,
    required String content,
    required String type,
    required String userName,
    required DateTime createdAt,
    required int viewCount,
    required String userId,
    @Default(false) bool isBlocked,
    @Default([]) List<NoticeReply>? noticeReplies,
  }) = _Notice;

  const Notice._();
  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}

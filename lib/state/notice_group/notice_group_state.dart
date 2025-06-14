import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_group_state.freezed.dart';

@freezed
class NoticeGroupState with _$NoticeGroupState {
  const factory NoticeGroupState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) NoticeGroup? noticeGroup,
  }) = _NoticeGroupState;

  factory NoticeGroupState.initialize() => const NoticeGroupState();
}

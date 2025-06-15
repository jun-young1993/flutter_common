import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/state/base/base_state.dart';

part 'notice_group_state.freezed.dart';

@freezed
class NoticeGroupState with _$NoticeGroupState, BaseStateMixin {
  const factory NoticeGroupState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) NoticeGroup? noticeGroup,
  }) = _NoticeGroupState;

  const NoticeGroupState._();

  factory NoticeGroupState.initialize() => const NoticeGroupState();
}

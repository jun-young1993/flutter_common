import 'package:flutter_common/extensions/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/state/base/base_state.dart';

part 'notice_state.freezed.dart';

@freezed
class NoticeState with _$NoticeState, BaseStateMixin {
  const factory NoticeState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default(null) Notice? notice,
    @Default([]) List<Notice>? notices,
    @Default(0) int skipCount,
    @Default(10) int take,
    @Default(false) bool hasMore,
  }) = _NoticeState;

  const NoticeState._();

  factory NoticeState.initialize() => const NoticeState();
}

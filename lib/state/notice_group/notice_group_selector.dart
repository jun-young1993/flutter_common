import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:flutter_common/state/notice_group/notice_group_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_state.dart';

class NoticeGroupSelector<T>
    extends BlocSelector<NoticeGroupBloc, NoticeGroupState, T> {
  const NoticeGroupSelector({
    Key? key,
    required T Function(NoticeGroupState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(
          key: key,
          selector: selector,
          builder: builder,
        );
}

class NoticeGroupFindSelector extends NoticeGroupSelector<NoticeGroup?> {
  NoticeGroupFindSelector(Widget Function(NoticeGroup? noticeGroup) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.noticeGroup,
          builder: (context, noticeGroup) => builder(noticeGroup),
        );
}

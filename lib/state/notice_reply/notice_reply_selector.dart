import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/notice/notice_reply.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_state.dart';

class NoticeReplySelector<T>
    extends BlocSelector<NoticeReplyBloc, NoticeReplyState, T> {
  const NoticeReplySelector({
    Key? key,
    required T Function(NoticeReplyState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class NoticeReplyFindAllSelector
    extends NoticeReplySelector<List<NoticeReply>?> {
  NoticeReplyFindAllSelector(Widget Function(List<NoticeReply>?) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.replies,
          builder: (context, replies) => builder(replies),
        );
}

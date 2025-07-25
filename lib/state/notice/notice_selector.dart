import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice/notice_state.dart';

class NoticeSelector<T> extends BlocSelector<NoticeBloc, NoticeState, T> {
  const NoticeSelector({
    Key? key,
    required T Function(NoticeState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class NoticeFindAllSelector extends NoticeSelector<List<Notice>?> {
  NoticeFindAllSelector(Widget Function(List<Notice>?) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.notices,
          builder: (context, notices) => builder(notices),
        );
}

class NoticeSuccessMessageSelector extends NoticeSelector<String?> {
  NoticeSuccessMessageSelector(Widget Function(String?) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.successMessage,
          builder: (context, successMessage) => builder(successMessage),
        );
}

class NoticeErrorSelector extends NoticeSelector<AppException?> {
  NoticeErrorSelector(Widget Function(AppException?) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.error,
          builder: (context, error) => builder(error),
        );
}

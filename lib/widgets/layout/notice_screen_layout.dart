import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/repositories/notice_group_repository.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice/notice_event.dart';
import 'package:flutter_common/state/notice/notice_page_bloc.dart';
import 'package:flutter_common/state/notice/notice_selector.dart';
import 'package:flutter_common/state/notice_group/notice_group_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_selector.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_event.dart';
import 'package:flutter_common/widgets/ad/ad_master.dart';
import 'package:flutter_common/widgets/layout/notice_create_screen.dart';
import 'package:flutter_common/widgets/layout/notice_detail_screen.dart';
import 'package:flutter_common/widgets/lib/container/card_container.dart';
import 'package:flutter_common/widgets/toast/toast.dart';
import 'package:flutter_common/widgets/ui/notice/notice_list_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class NoticeScreenLayout extends StatefulWidget {
  final String groupName;
  final User user;
  final AdMasterWidget? detailAd;

  const NoticeScreenLayout({
    super.key,
    required this.groupName,
    required this.user,
    this.detailAd,
  });

  @override
  State<NoticeScreenLayout> createState() => _NoticeScreenLayoutState();
}

class _NoticeScreenLayoutState extends State<NoticeScreenLayout> {
  // final ScrollController _scrollController = ScrollController();
  // bool _isFetching = false;
  NoticeGroupBloc get noticeGroupBloc => context.read<NoticeGroupBloc>();
  NoticeBloc get noticeBloc => context.read<NoticeBloc>();
  NoticeReplyBloc get noticeReplyBloc => context.read<NoticeReplyBloc>();
  NoticePageBloc get noticePageBloc => context.read<NoticePageBloc>();

  @override
  void initState() {
    super.initState();
    noticeGroupBloc.add(NoticeGroupEvent.findNoticeGroup(widget.groupName));
  }

  @override
  void didUpdateWidget(covariant NoticeScreenLayout oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: NoticeGroupFindSelector((noticeGroup) {
          if (noticeGroup == null) {
            return const SizedBox.shrink();
          }
          return FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => NoticeCreateScreen(
                          onSubmit: (title, content, type) {
                            noticeBloc.add(NoticeEvent.create(title, content,
                                type, noticeGroup.id, widget.user.id));
                            Navigator.of(context).pop();
                          },
                        )),
              );
            },
            child: const Icon(Icons.add),
          );
        }),
        body: _buildNoticeList());
  }

  Widget _buildNoticeList() {
    return BlocBuilder<NoticePageBloc, PagingState<int, Notice>>(
      bloc: noticePageBloc,
      builder: (context, state) => PagedListView<int, Notice>(
        state: state,
        builderDelegate: PagedChildBuilderDelegate<Notice>(
            itemBuilder: (context, item, index) => _buildNoticeItem(item),
            firstPageProgressIndicatorBuilder: (_) => const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
            newPageProgressIndicatorBuilder: (_) => const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
            noMoreItemsIndicatorBuilder: (_) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(Tr.message.lastNotice.tr(),
                      style: const TextStyle(color: Colors.grey)),
                ),
            noItemsFoundIndicatorBuilder: (_) => Center(
                  child: Text(Tr.message.notFoundNotice.tr()),
                )),
        fetchNextPage: () {
          noticePageBloc.add(FetchNextNotice(widget.groupName));
        },
      ),
    );
  }

  Widget _buildNoticeItem(Notice notice) {
    return NoticeListItem(
      title: notice.title,
      content: notice.content,
      userName: notice.userName,
      createdAt: notice.createdAt,
      viewCount: notice.viewCount,
      replyCount: notice.noticeReplies?.length ?? 0,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => NoticeDetailSection(
              notice: notice,
              user: widget.user,
              detailAd: widget.detailAd,
              onReport: (reason, comment) {
                noticeBloc.add(NoticeEvent.report(
                    notice.id, widget.user.id, reason.value, comment));
              },
              onSubmitReply: (reply) {
                noticeReplyBloc.add(
                    NoticeReplyEvent.add(notice.id, reply, widget.user.id));
              },
            ),
          ),
        );
      },
    );
  }
}

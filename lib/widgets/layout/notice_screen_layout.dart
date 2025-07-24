import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/repositories/notice_group_repository.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice/notice_event.dart';
import 'package:flutter_common/state/notice/notice_selector.dart';
import 'package:flutter_common/state/notice_group/notice_group_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_selector.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_event.dart';
import 'package:flutter_common/widgets/layout/notice_detail_screen.dart';
import 'package:flutter_common/widgets/lib/container/card_container.dart';
import 'package:flutter_common/widgets/ui/notice/notice_list_item.dart';

class NoticeScreenLayout extends StatefulWidget {
  final String groupName;
  final User? user;
  const NoticeScreenLayout({super.key, required this.groupName, this.user});

  @override
  State<NoticeScreenLayout> createState() => _NoticeScreenLayoutState();
}

class _NoticeScreenLayoutState extends State<NoticeScreenLayout> {
  final ScrollController _scrollController = ScrollController();
  bool _isFetching = false;
  NoticeGroupBloc get noticeGroupBloc => context.read<NoticeGroupBloc>();
  NoticeBloc get noticeBloc => context.read<NoticeBloc>();
  NoticeReplyBloc get noticeReplyBloc => context.read<NoticeReplyBloc>();

  @override
  void initState() {
    super.initState();
    noticeBloc.add(NoticeEvent.findAll(widget.groupName));
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 50) {
      final state = context.read<NoticeBloc>().state;
      if (!_isFetching && !state.isLoading && state.hasMore) {
        _isFetching = true;
        noticeBloc.add(NoticeEvent.addSkip(widget.groupName));
      }
    }
  }

  @override
  void didUpdateWidget(covariant NoticeScreenLayout oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isFetching = false;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final state = context.watch<NoticeBloc>().state;
    if (!state.isLoading) {
      _isFetching = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NoticeFindAllSelector((notices) {
      if (notices == null || notices.isEmpty) {
        return Center(child: Text(Tr.message.notFoundNotice.tr()));
      }

      return SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...notices.map((notice) => NoticeListItem(
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
                          onReport: (reason, comment) {
                            // TODO: 신고 처리 로직
                          },
                          onSubmitReply: (reply) {
                            if (widget.user == null) {
                              return;
                            }
                            noticeReplyBloc.add(NoticeReplyEvent.add(
                                notice.id, reply, widget.user!.id));
                          },
                        ),
                      ),
                    );
                  },
                )),
            if (context.read<NoticeBloc>().state.isLoading)
              const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            if (!context.read<NoticeBloc>().state.hasMore)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(Tr.message.lastNotice.tr(),
                    style: const TextStyle(color: Colors.grey)),
              ),
          ],
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_common/repositories/notice_group_repository.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice/notice_event.dart';
import 'package:flutter_common/state/notice/notice_selector.dart';
import 'package:flutter_common/state/notice_group/notice_group_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_selector.dart';
import 'package:flutter_common/widgets/lib/container/card_container.dart';

class NoticeScreenLayout extends StatefulWidget {
  final String groupName;
  const NoticeScreenLayout({super.key, required this.groupName});

  @override
  State<NoticeScreenLayout> createState() => _NoticeScreenLayoutState();
}

class _NoticeScreenLayoutState extends State<NoticeScreenLayout> {
  final ScrollController _scrollController = ScrollController();
  bool _isFetching = false;
  NoticeGroupBloc get noticeGroupBloc => context.read<NoticeGroupBloc>();
  NoticeBloc get noticeBloc => context.read<NoticeBloc>();

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
        return const Center(child: Text('공지사항이 없습니다.'));
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
                    // 상세 페이지 이동 등 원하는 동작
                  },
                )),
            if (context.read<NoticeBloc>().state.isLoading)
              const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            if (!context.read<NoticeBloc>().state.hasMore)
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('마지막 공지입니다.', style: TextStyle(color: Colors.grey)),
              ),
          ],
        ),
      );
    });
  }
}

class NoticeListItem extends StatelessWidget {
  final String title;
  final String content;
  final String userName;
  final DateTime createdAt;
  final int viewCount;
  final int replyCount;
  final VoidCallback? onTap;

  const NoticeListItem({
    super.key,
    required this.title,
    required this.content,
    required this.userName,
    required this.createdAt,
    required this.viewCount,
    required this.replyCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,
                              size: 14, color: Colors.grey.shade500),
                          const SizedBox(width: 4),
                          Text(
                            userName,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        timeAgo(createdAt),
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye,
                          size: 14, color: Colors.grey.shade500),
                      const SizedBox(width: 2),
                      Text(
                        viewCount.toString(),
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(Icons.chat_bubble_outline,
                          size: 14, color: Colors.grey.shade500),
                      const SizedBox(width: 2),
                      Text(
                        replyCount.toString(),
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String timeAgo(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inDays >= 365) return '${diff.inDays ~/ 365}년 전';
    if (diff.inDays >= 30) return '${diff.inDays ~/ 30}달 전';
    if (diff.inDays >= 7) return '${diff.inDays ~/ 7}주 전';
    if (diff.inDays >= 1) return '${diff.inDays}일 전';
    if (diff.inHours >= 1) return '${diff.inHours}시간 전';
    if (diff.inMinutes >= 1) return '${diff.inMinutes}분 전';
    return '방금 전';
  }
}

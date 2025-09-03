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
import 'dart:async';

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

  // 검색 디바운싱을 위한 타이머
  Timer? _searchDebounceTimer;
  String _currentSearchQuery = '';

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
    _searchDebounceTimer?.cancel();
    super.dispose();
  }

  // 검색 디바운싱 함수
  void _onSearchChanged(String query) {
    _currentSearchQuery = query;

    // 기존 타이머 취소
    _searchDebounceTimer?.cancel();

    // 2초 후에 검색 실행
    _searchDebounceTimer = Timer(const Duration(seconds: 1), () {
      _performSearch(query);
    });
  }

  // 실제 검색 실행 함수
  void _performSearch(String query) {
    noticePageBloc.add(ClearNotice());
    if (query.isEmpty) {
      // 검색어가 비어있으면 전체 목록 조회
      noticePageBloc.add(FetchNextNotice(widget.groupName));
    } else {
      // 검색어가 있으면 검색 API 호출
      // TODO: 실제 검색 API 호출 로직 구현

      noticePageBloc.add(FetchNextNotice(widget.groupName, title: query));
      // 예시: 검색 이벤트를 Bloc에 전달
      // noticeBloc.add(NoticeEvent.search(query, widget.groupName));

      // 또는 검색 결과를 페이지네이션에 반영
      // noticePageBloc.add(SearchNotice(widget.groupName, query));
    }
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Column(
              children: [
                _buildNoticeSearch(),
                Expanded(child: _buildNoticeList()),
              ],
            ),
          ),
        ));
  }

  Widget _buildNoticeSearch() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: Tr.message.searchNoticeDescription.tr(),
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[600],
            size: 20,
          ),
          suffixIcon: Icon(
            Icons.tune,
            color: Colors.grey[600],
            size: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
              width: 1.5,
            ),
          ),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
        ),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black87,
        ),
        onChanged: _onSearchChanged,
      ),
    );
  }

  Widget _buildNoticeList() {
    return BlocBuilder<NoticePageBloc, PagingState<int, Notice>>(
      bloc: noticePageBloc,
      builder: (context, state) => PagedListView<int, Notice>(
        state: state,
        padding: const EdgeInsets.all(0),
        builderDelegate: PagedChildBuilderDelegate<Notice>(
            itemBuilder: (context, item, index) => _buildNoticeItem(item),
            firstPageProgressIndicatorBuilder: (_) => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
            newPageProgressIndicatorBuilder: (_) => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
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

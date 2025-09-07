import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice/notice_event.dart';
import 'package:flutter_common/state/notice/notice_selector.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_event.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_selector.dart';
import 'package:flutter_common/widgets/ad/ad_master.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:flutter_common/widgets/layout/sections/notice/notice_detail_main_section.dart';
import 'package:flutter_common/widgets/layout/sections/notice/notice_reply_section.dart';
import 'package:flutter_common/widgets/toast/toast.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/user/user.dart';

class NoticeDetailSection extends StatefulWidget {
  final Notice notice;
  final DateFormat dateFormatter = DateFormat('yyyy.MM.dd HH:mm');
  final Function(String)? onSubmitReply;
  final Function(ReportReason, String?) onReport;
  final Function(String blockedUserId, String userName, String reason)
      onBlockUser;
  final User? user;
  final AdMasterWidget? detailAd;
  final VoidCallback? onStateChanged;

  NoticeDetailSection({
    super.key,
    required this.notice,
    required this.onReport,
    this.onSubmitReply,
    this.user,
    this.detailAd,
    required this.onBlockUser,
    this.onStateChanged,
  });

  @override
  State<NoticeDetailSection> createState() => _NoticeDetailSectionState();
}

class _NoticeDetailSectionState extends State<NoticeDetailSection> {
  NoticeReplyBloc get noticeReplyBloc => context.read<NoticeReplyBloc>();
  NoticeBloc get noticeBloc => context.read<NoticeBloc>();

  @override
  void initState() {
    super.initState();
    noticeReplyBloc.add(NoticeReplyEvent.findAll(widget.notice.id));
    noticeBloc.add(NoticeEvent.findOneById(widget.notice.id, widget.user?.id));
  }

  void _showReportDialog(BuildContext context) {
    ReportDialog.show(
      context: context,
      onReport: widget.onReport,
    );
  }

  void _showBlockConfirmationDialog(BuildContext context,
      {required String userName, required String blockedUserId}) {
    final TextEditingController reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final bool isReasonEmpty = reasonController.text.trim().isEmpty;

            return AlertDialog(
              title: Text(Tr.user.block),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Tr.user.blockConfirmation
                      .tr(namedArgs: {'userName': userName})),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        Tr.user.blockReason.tr(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: reasonController,
                    onChanged: (value) {
                      setState(() {}); // UI 업데이트를 위해 setState 호출
                    },
                    decoration: InputDecoration(
                      hintText: Tr.user.blockReasonHint.tr(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: isReasonEmpty
                              ? Colors.red.shade300
                              : Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: isReasonEmpty
                              ? Colors.red.shade300
                              : Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: isReasonEmpty
                              ? Colors.red.shade500
                              : Colors.blue.shade500,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                    maxLines: 3,
                    maxLength: 200,
                  ),
                  if (isReasonEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      Tr.user.blockReasonHint.tr(),
                      style: TextStyle(
                        color: Colors.red.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(Tr.app.cancel),
                ),
                TextButton(
                  onPressed: isReasonEmpty
                      ? null
                      : () {
                          Navigator.of(context).pop();
                          widget.onBlockUser(blockedUserId, userName,
                              reasonController.text.trim());
                          // 상태 변경 알림
                          widget.onStateChanged?.call();
                        },
                  style: TextButton.styleFrom(
                    foregroundColor:
                        isReasonEmpty ? Colors.grey : Colors.red.shade600,
                  ),
                  child: Text(Tr.user.blockUser.tr()),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showReportReplyDialog(
    BuildContext context, {
    required String noticeReplyId,
  }) {
    ReportDialog.show(
      context: context,
      onReport: (reason, comment) {
        if (widget.user == null) {
          Toast.show(context,
              message: Tr.app.noUser.tr(), type: ToastType.error);
          return;
        }
        noticeReplyBloc.add(NoticeReplyEvent.report(
            noticeReplyId, widget.user!.id, reason.value, comment));
        Toast.show(context,
            message: Tr.message.reportReply.tr(), type: ToastType.success);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.notice.title,
            style: const TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NoticeFindOneSelector((notice) {
                    return NoticeDetailMainSection(
                      notice: notice ?? widget.notice,
                      dateFormatter: widget.dateFormatter,
                      onReport: () => _showReportDialog(context),
                      onBlockUser: () => _showBlockConfirmationDialog(context,
                          userName: widget.notice.userName,
                          blockedUserId: widget.notice.userId),
                    );
                  }),
                  SizedBox(
                      height:
                          SizeConstants.getContainerVerticalMargin(context)),
                  // 첫 번째 광고 - 고정 높이로 제한
                  // 두 번째 광고 (detailAd가 있는 경우)
                  if (widget.detailAd != null) ...[
                    SizedBox(
                        height:
                            SizeConstants.getContainerVerticalMargin(context)),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: widget.detailAd!,
                    ),
                  ],
                  SizedBox(
                      height:
                          SizeConstants.getContainerVerticalMargin(context)),
                  NoticeReplyFindAllSelector(
                    (replies) => NoticeReplySection(
                      user: widget.user,
                      replies: replies ?? [],
                      onReport: (noticeReplyId) => _showReportReplyDialog(
                          context,
                          noticeReplyId: noticeReplyId),
                      onBlockUser: (reply) => _showBlockConfirmationDialog(
                          context,
                          userName: reply.userName,
                          blockedUserId: reply.userId),
                      onSubmitReply: widget.onSubmitReply ?? (reply) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

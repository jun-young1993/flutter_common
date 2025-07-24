import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_event.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_selector.dart';
import 'package:flutter_common/widgets/ad/ad_widgets.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:flutter_common/widgets/layout/sections/notice/notice_detail_main_section.dart';
import 'package:flutter_common/widgets/layout/sections/notice/notice_reply_section.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/user/user.dart';

class NoticeDetailSection extends StatefulWidget {
  final Notice notice;
  final DateFormat dateFormatter = DateFormat('yyyy.MM.dd HH:mm');
  final Function(String)? onSubmitReply;
  final Function(ReportReason, String?) onReport;
  final User? user;

  NoticeDetailSection({
    super.key,
    required this.notice,
    required this.onReport,
    this.onSubmitReply,
    this.user,
  });

  @override
  State<NoticeDetailSection> createState() => _NoticeDetailSectionState();
}

class _NoticeDetailSectionState extends State<NoticeDetailSection> {
  NoticeReplyBloc get noticeReplyBloc => context.read<NoticeReplyBloc>();

  @override
  void initState() {
    super.initState();
    noticeReplyBloc.add(NoticeReplyEvent.findAll(widget.notice.id));
  }

  void _showReportDialog(BuildContext context) {
    ReportDialog.show(
      context: context,
      onReport: widget.onReport,
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NoticeDetailMainSection(
              notice: widget.notice,
              dateFormatter: widget.dateFormatter,
              onReport: () => _showReportDialog(context),
            ),
            SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
            const Center(
              child: BannerAdWidget(),
            ),
            SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
            NoticeReplyFindAllSelector(
              (replies) => NoticeReplySection(
                user: widget.user,
                replies: replies ?? [],
                onSubmitReply: widget.onSubmitReply ?? (reply) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

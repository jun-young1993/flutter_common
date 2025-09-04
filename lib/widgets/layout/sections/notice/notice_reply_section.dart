import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/models/notice/notice_reply.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/widgets/buttons/report_button.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:intl/intl.dart';

class NoticeReplySection extends StatefulWidget {
  final List<NoticeReply> replies;
  final User? user;
  final Function(String) onSubmitReply;
  final Function(String noticeReplyId) onReport;

  const NoticeReplySection({
    super.key,
    required this.replies,
    required this.onSubmitReply,
    this.user,
    required this.onReport,
  });

  @override
  State<NoticeReplySection> createState() => _NoticeReplySectionState();
}

class _NoticeReplySectionState extends State<NoticeReplySection> {
  final _replyController = TextEditingController();

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.all(SizeConstants.getContainerVerticalMargin(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildReplyCount(context),
          const SizedBox(height: 16),
          _buildReplyInputField(context),
          const SizedBox(height: 16),
          widget.replies.isEmpty
              ? _buildEmptyNoticeReply()
              : _buildReplyWrapSection(context),
        ],
      ),
    );
  }

  Widget _buildReplyCount(BuildContext context) {
    return Text(
      Tr.notice.replyCount.tr(namedArgs: {
        'count': widget.replies.isEmpty ? '0' : widget.replies.length.toString()
      }),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildReplyInputField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _replyController,
              decoration: InputDecoration(
                hintText: Tr.message.enterReply.tr(),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
          TextButton(
            onPressed: () {
              if (_replyController.text.trim().isNotEmpty &&
                  widget.user != null) {
                widget.onSubmitReply(_replyController.text);
                _replyController.clear();
              }
            },
            child: Text(widget.user == null
                ? Tr.app.noUser.tr()
                : Tr.app.register.tr()),
          ),
        ],
      ),
    );
  }

  Widget _buildReplyWrapSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 댓글 목록
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.replies.length,
          separatorBuilder: (context, index) => const Divider(height: 24),
          itemBuilder: (context, index) {
            final reply = widget.replies[index];
            return NoticeReplyItem(
                reply: reply, onReport: () => widget.onReport(reply.id));
          },
        ),
      ],
    );
  }

  Widget _buildEmptyNoticeReply() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(
            Icons.chat_bubble_outline,
            size: 48,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 8),
          Text(
            Tr.notice.noReply.tr(),
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

class NoticeReplyItem extends StatelessWidget {
  final NoticeReply reply;
  final dateFormatter = DateFormat('yyyy-MM-dd HH:mm');
  final Function() onReport;
  NoticeReplyItem({
    super.key,
    required this.reply,
    required this.onReport,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 댓글 작성자 정보
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                const Icon(
                  Icons.person_outline,
                  size: 16,
                  color: Colors.grey,
                ),
                const SizedBox(width: 4),
                Text(
                  reply.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  dateFormatter.format(reply.createdAt),
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ReportButton(
                    onReport: onReport,
                    size: SizeConstants.getSmallIconButtonSize(context)),
              ],
            )
          ]),
          const SizedBox(height: 8),
          // 댓글 내용
          Text(
            reply.content,
            style: const TextStyle(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

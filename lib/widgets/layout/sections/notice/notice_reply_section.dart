import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/models/notice/notice_reply.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/widgets/buttons/report_button.dart';
import 'package:intl/intl.dart';

class NoticeReplySection extends StatefulWidget {
  final List<NoticeReply> replies;
  final User? user;
  final Function(String) onSubmitReply;
  final Function(String noticeReplyId) onReport;
  final Function(NoticeReply reply) onBlockUser;

  const NoticeReplySection({
    super.key,
    required this.replies,
    required this.onSubmitReply,
    this.user,
    required this.onReport,
    required this.onBlockUser,
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
              reply: reply,
              onReport: () => widget.onReport(reply.id),
              onBlockUser: () => widget.onBlockUser(reply),
            );
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
  final Function() onBlockUser;

  NoticeReplyItem({
    super.key,
    required this.reply,
    required this.onReport,
    required this.onBlockUser,
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
            reply.isBlocked
                ? _buildBlockedUserProfile()
                : _buildUserProfileSection(context,
                    onBlockUser: () => onBlockUser(), onReport: onReport),
            if (!reply.isBlocked)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReportButton(
                      onReport: onReport,
                      size: SizeConstants.getSmallIconButtonSize(context)),
                ],
              )
          ]),
          const SizedBox(height: 8),
          // 댓글 내용
          _buildReplyContent(),
        ],
      ),
    );
  }

  Widget _buildReplyContent() {
    if (reply.isBlocked) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Icon(
              Icons.block,
              size: 16,
              color: Colors.grey.shade500,
            ),
            const SizedBox(width: 8),
            Text(
              Tr.user.blockedUser.tr(),
              style: TextStyle(
                color: Colors.grey.shade600,
                fontStyle: FontStyle.italic,
                fontSize: 14,
              ),
            ),
          ],
        ),
      );
    }

    return Text(
      reply.content,
      style: const TextStyle(
        height: 1.5,
      ),
    );
  }

  Widget _buildBlockedUserProfile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.person_off,
            size: 16,
            color: Colors.grey.shade500,
          ),
          const SizedBox(width: 4),
          Text(
            '차단된 사용자',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            dateFormatter.format(reply.createdAt),
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileSection(
    BuildContext context, {
    required Function() onBlockUser,
    required Function() onReport,
  }) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        switch (value) {
          case 'block':
            onBlockUser();
            break;
          case 'report':
            onReport();
            break;
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'block',
          child: Row(
            children: [
              Icon(
                Icons.block,
                size: 18,
                color: Colors.red.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                Tr.user.blockUser.tr(),
                style: TextStyle(
                  color: Colors.red.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'report',
          child: Row(
            children: [
              Icon(
                Icons.report,
                size: 18,
                color: Colors.orange.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                Tr.report.submit.tr(),
                style: TextStyle(
                  color: Colors.orange.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
            const SizedBox(width: 4),
            Icon(
              Icons.keyboard_arrow_down,
              size: 16,
              color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
    );
  }
}

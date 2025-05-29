import 'package:flutter/material.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:intl/intl.dart';

class NoticeDetailWrapper extends StatelessWidget {
  final Notice notice;
  final dateFormatter = DateFormat('yyyy-MM-dd HH:mm');
  final Function(String)? onSubmitReply;
  final Function(ReportReason, String?) onReport;

  NoticeDetailWrapper({
    super.key,
    required this.notice,
    required this.onReport,
    this.onSubmitReply,
  });

  void _showReportDialog(BuildContext context) {
    ReportDialog.show(
      context: context,
      onReport: onReport,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NoticeTitleSection(
            notice: notice,
            dateFormatter: dateFormatter,
            onReport: () => _showReportDialog(context),
          ),
          const SizedBox(height: 24),
          NoticeContentSection(content: notice.content),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class NoticeTitleSection extends StatelessWidget {
  final Notice notice;
  final DateFormat dateFormatter;
  final VoidCallback onReport;

  const NoticeTitleSection({
    super.key,
    required this.notice,
    required this.dateFormatter,
    required this.onReport,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTypeBadge(),
              Text(
                dateFormatter.format(notice.createdAt),
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            notice.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          _buildMetaInfo(),
        ],
      ),
    );
  }

  Widget _buildTypeBadge() {
    final isNotice = notice.type == 'NOTICE';
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: isNotice ? Colors.red.shade50 : Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isNotice ? Colors.red.shade100 : Colors.blue.shade100,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isNotice ? Icons.campaign_outlined : Icons.article_outlined,
            size: 14,
            color: isNotice ? Colors.red : Colors.blue,
          ),
          const SizedBox(width: 4),
          Text(
            isNotice ? '공지' : '일반',
            style: TextStyle(
              color: isNotice ? Colors.red : Colors.blue,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetaInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          _buildMetaItem(
            icon: Icons.person_outline,
            text: notice.userName,
          ),
          const SizedBox(width: 20),
          _buildMetaItem(
            icon: Icons.remove_red_eye_outlined,
            text: '${notice.viewCount}',
          ),
          const Spacer(),
          IconButton(
            onPressed: onReport,
            icon: Icon(
              Icons.flag_outlined,
              size: 20,
              color: Colors.grey.shade600,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey.shade100,
              padding: const EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetaItem({
    required IconData icon,
    required String text,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.grey.shade600,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class NoticeContentSection extends StatelessWidget {
  final String content;

  const NoticeContentSection({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade100,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.description_outlined,
                  size: 20,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '내용',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              height: 1.7,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}

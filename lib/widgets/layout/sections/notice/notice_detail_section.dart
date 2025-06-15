import 'package:flutter/material.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:intl/intl.dart';

class NoticeDetailSection extends StatelessWidget {
  final Notice notice;
  final dateFormatter = DateFormat('yyyy.MM.dd HH:mm');
  final Function(String)? onSubmitReply;
  final Function(ReportReason, String?) onReport;

  NoticeDetailSection({
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
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(notice.title, style: const TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _NoticeHeader(
              notice: notice,
              dateFormatter: dateFormatter,
              onReport: () => _showReportDialog(context),
            ),
            const SizedBox(height: 16),
            _NoticeContentCard(
              title: notice.title,
              content: notice.content,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _NoticeHeader extends StatelessWidget {
  final Notice notice;
  final DateFormat dateFormatter;
  final VoidCallback onReport;

  const _NoticeHeader({
    required this.notice,
    required this.dateFormatter,
    required this.onReport,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
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
                  color: Colors.grey.shade500,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            notice.title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              height: 1.4,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 1,
            margin: const EdgeInsets.only(bottom: 5),
            color: Colors.grey.shade200,
          ),
          Text(
            notice.content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.7,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildMetaItem(
                icon: Icons.person_outline,
                text: notice.userName,
              ),
              const SizedBox(width: 18),
              _buildMetaItem(
                icon: Icons.remove_red_eye_outlined,
                text: '${notice.viewCount}',
              ),
              const Spacer(),
              IconButton(
                onPressed: onReport,
                icon: Icon(
                  Icons.flag_outlined,
                  size: 22,
                  color: Colors.grey.shade500,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade100,
                  padding: const EdgeInsets.all(8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTypeBadge() {
    final isNotice = notice.type == 'NOTICE';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
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
            size: 15,
            color: isNotice ? Colors.red : Colors.blue,
          ),
          const SizedBox(width: 5),
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
          color: Colors.grey.shade500,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _NoticeContentCard extends StatelessWidget {
  final String title;
  final String content;
  const _NoticeContentCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.7,
              color: Color(0xFF222222),
            ),
          ),
        ],
      ),
    );
  }
}

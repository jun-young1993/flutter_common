import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/widgets/buttons/report_button.dart';
import 'package:intl/intl.dart';

class NoticeDetailMainSection extends StatelessWidget {
  final Notice notice;
  final DateFormat dateFormatter;
  final VoidCallback onReport;

  const NoticeDetailMainSection({
    super.key,
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
          SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
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
          SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
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
              ReportButton(onReport: onReport),
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
            isNotice ? Tr.notice.notice.tr() : Tr.notice.normal.tr(),
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

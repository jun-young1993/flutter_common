import 'dart:ui';

import 'package:flutter/material.dart';

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

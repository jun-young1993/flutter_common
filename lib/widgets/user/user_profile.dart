import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/widgets/user/blocked_user.dart';
import 'package:intl/intl.dart';

class UserProfile extends StatelessWidget {
  final Function() onBlockUser;
  final Function() onReport;
  final String userName;
  final DateTime? date;
  final dateFormatter = DateFormat('yyyy-MM-dd HH:mm');
  final bool isBlocked;
  final BlockedUserType type;
  UserProfile({
    super.key,
    required this.onBlockUser,
    required this.onReport,
    required this.userName,
    this.date,
    required this.isBlocked,
    this.type = BlockedUserType.user,
  });

  @override
  Widget build(BuildContext context) {
    if (isBlocked) {
      return BlockedUser(type: type);
    }
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
              userName,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            if (date != null)
              Text(
                dateFormatter.format(date!),
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

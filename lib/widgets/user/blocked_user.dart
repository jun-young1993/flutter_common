import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';

enum BlockedUserType { user, post }

class BlockedUser extends StatelessWidget {
  final BlockedUserType type;
  const BlockedUser({super.key, this.type = BlockedUserType.user});

  @override
  Widget build(BuildContext context) {
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
            type == BlockedUserType.user ? Icons.person_off : Icons.block,
            size: 16,
            color: Colors.grey.shade500,
          ),
          const SizedBox(width: 4),
          Text(
            type == BlockedUserType.user
                ? Tr.user.blockedUser.tr()
                : Tr.user.blockedUserPost.tr(),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

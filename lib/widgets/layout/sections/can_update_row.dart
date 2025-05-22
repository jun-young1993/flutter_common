import 'package:flutter/material.dart';

class CanUpdateRow extends StatelessWidget {
  final bool canUpdate;
  final String version;
  final bool alwaysUpdate;
  final Function() onUpdate;
  const CanUpdateRow({
    Key? key,
    required this.canUpdate,
    required this.version,
    this.alwaysUpdate = false,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Container(
      padding: EdgeInsets.all(isTablet ? 16 : 12),
      decoration: BoxDecoration(
        color: canUpdate
            ? Theme.of(context).primaryColor.withOpacity(0.05)
            : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: canUpdate
              ? Theme.of(context).primaryColor.withOpacity(0.2)
              : Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: canUpdate
                  ? Theme.of(context).primaryColor.withOpacity(0.1)
                  : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              canUpdate ? Icons.system_update : Icons.check_circle_outline,
              size: isTablet ? 20 : 16,
              color: canUpdate
                  ? Theme.of(context).primaryColor
                  : Colors.grey.shade600,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  canUpdate ? '새로운 버전이 있습니다' : '최신 버전입니다',
                  style: TextStyle(
                    fontSize: isTablet ? 15 : 13,
                    fontWeight: FontWeight.w600,
                    color: canUpdate
                        ? Theme.of(context).primaryColor
                        : Colors.grey.shade700,
                  ),
                ),
                if (canUpdate || alwaysUpdate) ...[
                  const SizedBox(height: 4),
                  Text(
                    '새 버전: $version',
                    style: TextStyle(
                      fontSize: isTablet ? 13 : 11,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (canUpdate || alwaysUpdate) ...[
            const SizedBox(width: 12),
            TextButton(
              onPressed: onUpdate,
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 16 : 12,
                  vertical: isTablet ? 8 : 6,
                ),
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: Text(
                '업데이트',
                style: TextStyle(
                  fontSize: isTablet ? 14 : 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

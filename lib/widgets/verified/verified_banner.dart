import 'package:flutter/material.dart';

class VerifiedBanner extends StatelessWidget {
  final String? label;
  const VerifiedBanner({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade200, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.verified, color: Colors.green.shade700, size: 20),
              const SizedBox(width: 8),
              Text(
                '인증되었습니다',
                style: TextStyle(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          ),
          if (label != null) ...[
            const SizedBox(width: 6),
            Text(
              label!,
              style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ]
        ],
      ),
    );
  }
}

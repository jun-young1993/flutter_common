import 'package:flutter/material.dart';

class ReportButton extends StatelessWidget {
  final VoidCallback onReport;
  final double? size;

  const ReportButton({super.key, required this.onReport, this.size = 22});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onReport,
      icon: Icon(
        Icons.flag_outlined,
        size: size,
        color: Colors.grey.shade500,
      ),
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey.shade100,
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}

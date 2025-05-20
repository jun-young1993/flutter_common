import 'package:flutter/material.dart';
import 'package:flutter_common/constants/juny_constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key, required this.currentVersion})
      : super(key: key);
  final String currentVersion;
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final horizontalPadding = isTablet ? 10.0 : 5.0;
    final maxWidth = isTablet ? 600.0 : double.infinity;

    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            maxWidth: maxWidth,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [_buildInfoSection()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: 20, vertical: isTablet ? 24 : 16),
      padding: EdgeInsets.all(isTablet ? 24 : 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                size: isTablet ? 24 : 20,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                '기타',
                style: TextStyle(
                  fontSize: isTablet ? 18 : 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          SizedBox(height: isTablet ? 20 : 16),
          Row(
            children: [
              Icon(
                Icons.new_releases_outlined,
                size: isTablet ? 20 : 16,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                '버전 정보',
                style: TextStyle(
                  fontSize: isTablet ? 16 : 14,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                widget.currentVersion,
                style: TextStyle(
                  fontSize: isTablet ? 16 : 14,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: isTablet ? 16 : 12),
            child: Divider(
              color: Colors.grey.shade300,
              height: 1,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.help_outline,
                size: isTablet ? 20 : 16,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                '문의',
                style: TextStyle(
                  fontSize: isTablet ? 16 : 14,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
          SizedBox(height: isTablet ? 12 : 8),
          Row(
            children: [
              SizedBox(width: isTablet ? 28 : 24),
              Expanded(
                child: Text(
                  '아래 이메일로 문의해주세요.',
                  style: TextStyle(
                    fontSize: isTablet ? 16 : 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: isTablet ? 8 : 4),
          Row(
            children: [
              SizedBox(width: isTablet ? 28 : 24),
              Icon(
                Icons.email_outlined,
                size: isTablet ? 16 : 14,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                JunyConstants.email,
                style: TextStyle(
                  fontSize: isTablet ? 16 : 14,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

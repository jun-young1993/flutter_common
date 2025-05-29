import 'package:flutter/material.dart';
import 'package:flutter_common/widgets/dialogs/app_dialog.dart';

enum ReportReason {
  wrongInfo('잘못된 정보'),
  commercialAd('상업적 광고'),
  adultContent('음란물'),
  violence('폭력성'),
  etc('기타');

  final String label;
  const ReportReason(this.label);

  String get value => name;

  IconData get icon {
    switch (this) {
      case ReportReason.wrongInfo:
        return Icons.info_outline;
      case ReportReason.commercialAd:
        return Icons.campaign_outlined;
      case ReportReason.adultContent:
        return Icons.block_outlined;
      case ReportReason.violence:
        return Icons.warning_amber_outlined;
      case ReportReason.etc:
        return Icons.more_horiz;
    }
  }
}

class ReportDialog {
  static Future<void> show({
    required BuildContext context,
    required Function(ReportReason, String?) onReport,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => _ReportDialogContent(
        onReport: onReport,
      ),
    );
  }
}

class _ReportDialogContent extends StatefulWidget {
  final Function(ReportReason, String?) onReport;

  const _ReportDialogContent({
    required this.onReport,
  });

  @override
  State<_ReportDialogContent> createState() => _ReportDialogContentState();
}

class _ReportDialogContentState extends State<_ReportDialogContent>
    with SingleTickerProviderStateMixin {
  ReportReason? selectedReason;
  final TextEditingController _etcController = TextEditingController();
  bool _isEtcSelected = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _etcController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _handleReasonSelection(ReportReason reason) {
    setState(() {
      selectedReason = reason;
      _isEtcSelected = reason == ReportReason.etc;
    });
  }

  void _handleSubmit() {
    if (selectedReason == null) return;

    if (selectedReason == ReportReason.etc &&
        _etcController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('기타 사유를 입력해주세요.'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    widget.onReport(
      selectedReason!,
      selectedReason == ReportReason.etc ? _etcController.text.trim() : null,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.report_outlined,
                      size: 32,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '신고사유를 선택해주십시오.',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '신고 사유에 맞지 않는 신고일 경우,\n해당 신고는 처리되지 않습니다.\n누적 신고횟수가 3회 이상인 유저는 게시글 작성을 할 수 없게 됩니다.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey.shade600,
                          height: 1.5,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ...ReportReason.values.map((reason) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          onTap: () => _handleReasonSelection(reason),
                          borderRadius: BorderRadius.circular(12),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: selectedReason == reason
                                  ? Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.1)
                                  : Colors.grey.shade50,
                              border: Border.all(
                                color: selectedReason == reason
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey.shade200,
                                width: selectedReason == reason ? 2 : 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: selectedReason == reason
                                        ? Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.2)
                                        : Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    reason.icon,
                                    size: 20,
                                    color: selectedReason == reason
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey.shade600,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    reason.label,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: selectedReason == reason
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey.shade800,
                                      fontWeight: selectedReason == reason
                                          ? FontWeight.w600
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                                if (selectedReason == reason)
                                  Icon(
                                    Icons.check_circle,
                                    color: Theme.of(context).primaryColor,
                                    size: 20,
                                  ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  if (_isEtcSelected) ...[
                    const SizedBox(height: 16),
                    TextField(
                      controller: _etcController,
                      decoration: InputDecoration(
                        hintText: '기타 사유를 입력해주세요',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        filled: true,
                        fillColor: Colors.grey.shade50,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      maxLines: 3,
                      textInputAction: TextInputAction.done,
                    ),
                  ],
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            side: BorderSide(color: Colors.grey.shade300),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            '취소',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _handleSubmit,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            backgroundColor: Theme.of(context).primaryColor,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            '신고하기',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';

class ErrorView<T extends Exception> extends StatelessWidget {
  final T error;
  final VoidCallback? onRetry;
  final Widget Function(T error)? errorIcon;
  final String Function(T error)? errorMessage;
  final Widget Function(T error, VoidCallback? onRetry)? errorContent;

  const ErrorView({
    Key? key,
    required this.error,
    this.onRetry,
    this.errorIcon,
    this.errorMessage,
    this.errorContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 완전 커스텀 컨텐츠가 제공된 경우
    if (errorContent != null) {
      return errorContent!(error, onRetry);
    }

    // 기본 에러 뷰
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              errorIcon?.call(error) ?? _buildDefaultIcon(),
              const SizedBox(height: 16),
              Text(
                errorMessage?.call(error) ?? _getDefaultErrorMessage(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey[700],
                    ),
              ),
              if (onRetry != null) ...[
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onRetry,
                  child: Text(Tr.app.retry.tr()),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDefaultIcon() {
    IconData iconData = Icons.error;
    Color iconColor = Colors.red;

    return Icon(
      iconData,
      size: 64,
      color: iconColor,
    );
  }

  String _getDefaultErrorMessage() {
    return (error as dynamic)?.message ?? Tr.error.unknownError.tr();
  }
}

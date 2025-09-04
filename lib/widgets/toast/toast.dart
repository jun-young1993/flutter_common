import 'package:flutter/material.dart';
import 'package:flutter_common/extensions/app_exception.dart';

enum ToastType {
  success,
  error,
  warning,
  info,
}

class Toast extends StatelessWidget {
  final String message;
  final ToastType type;
  final Duration duration;
  final VoidCallback? onDismiss;

  const Toast({
    super.key,
    required this.message,
    this.type = ToastType.info,
    this.duration = const Duration(seconds: 2),
    this.onDismiss,
  });

  static void show(
    BuildContext context, {
    required String message,
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onDismiss,
  }) {
    final overlayState =
        Overlay.of(context, debugRequiredFor: Toast(message: message));
    final overlayEntry = OverlayEntry(
      builder: (context) => Toast(
        message: message,
        type: type,
        duration: duration,
        onDismiss: onDismiss,
      ),
    );

    overlayState.insert(overlayEntry);
    Future.delayed(duration, () {
      overlayEntry.remove();
      onDismiss?.call();
    });
  }

  static void showError(
    BuildContext context, {
    required AppException error,
    Duration duration = const Duration(seconds: 5),
    VoidCallback? onDismiss,
  }) {
    show(
      context,
      message: error.message ?? 'unknown',
      type: ToastType.error,
      duration: duration,
      onDismiss: onDismiss,
    );
  }

  static void showSuccess(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onDismiss,
  }) {
    show(
      context,
      message: message,
      type: ToastType.success,
      duration: duration,
      onDismiss: onDismiss,
    );
  }

  static void showWarning(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
    VoidCallback? onDismiss,
  }) {
    show(
      context,
      message: message,
      type: ToastType.warning,
      duration: duration,
      onDismiss: onDismiss,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 50,
      left: 0,
      right: 0,
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: _getBackgroundColor(),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _getIcon(),
                  color: _getIconColor(),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    message,
                    style: TextStyle(
                      color: _getTextColor(),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    switch (type) {
      case ToastType.success:
        return const Color(0xFFE8F5E9);
      case ToastType.error:
        return const Color(0xFFFBE9E7);
      case ToastType.warning:
        return const Color(0xFFFFF8E1);
      case ToastType.info:
        return const Color(0xFFE3F2FD);
    }
  }

  Color _getTextColor() {
    switch (type) {
      case ToastType.success:
        return const Color(0xFF2E7D32);
      case ToastType.error:
        return const Color(0xFFD32F2F);
      case ToastType.warning:
        return const Color(0xFFF57F17);
      case ToastType.info:
        return const Color(0xFF1976D2);
    }
  }

  Color _getIconColor() {
    return _getTextColor();
  }

  IconData _getIcon() {
    switch (type) {
      case ToastType.success:
        return Icons.check_circle_outline;
      case ToastType.error:
        return Icons.error_outline;
      case ToastType.warning:
        return Icons.warning_amber_outlined;
      case ToastType.info:
        return Icons.info_outline;
    }
  }
}

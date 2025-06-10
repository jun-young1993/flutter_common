import 'package:flutter/material.dart';

class AwesomeTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool isLoading;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;

  const AwesomeTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final btnColor = color ?? theme.primaryColor;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeOut,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: btnColor.withOpacity(0.18),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: btnColor.withOpacity(0.12)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(32),
          splashColor: btnColor.withOpacity(0.12),
          highlightColor: btnColor.withOpacity(0.08),
          onTap: isLoading ? null : onPressed,
          child: Padding(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(icon, color: btnColor, size: (fontSize ?? 16) + 4),
                  const SizedBox(width: 8),
                ],
                isLoading
                    ? SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.2,
                          valueColor: AlwaysStoppedAnimation(btnColor),
                        ),
                      )
                    : Text(
                        text,
                        style: TextStyle(
                          color: btnColor,
                          fontSize: fontSize ?? 16,
                          fontWeight: fontWeight ?? FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

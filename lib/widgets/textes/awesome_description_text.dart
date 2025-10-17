import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';

class AwesomeDescriptionText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final IconData? icon;
  final EdgeInsetsGeometry? padding;

  const AwesomeDescriptionText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final descColor = color ?? theme.primaryColor;
    final descFontSize =
        fontSize ?? SizeConstants.getTextMediumFontSize(context);
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Icon(icon, color: descColor, size: descFontSize + 2),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              text,
              textAlign: textAlign ?? TextAlign.left,
              softWrap: true,
              overflow: TextOverflow.visible,
              style: TextStyle(
                color: descColor,
                fontSize: descFontSize,
                fontWeight: fontWeight ?? FontWeight.w500,
                height: 1.7,
                letterSpacing: 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

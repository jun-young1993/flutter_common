import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';

class IconText extends StatelessWidget {
  const IconText(
      {super.key,
      this.icon,
      this.title,
      this.iconSize,
      this.textSize,
      this.fontWeight,
      this.fontColor});
  final IconData? icon;
  final String? title;

  final double? iconSize;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null)
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon ?? Icons.help_outline,
              size: iconSize ?? SizeConstants.getLargeIconSize(context),
              color: Theme.of(context).primaryColor,
            ),
          ),
        const SizedBox(width: 12),
        if (title != null)
          Text(title!,
              style: TextStyle(
                fontSize:
                    textSize ?? SizeConstants.getTextLargeFontSize(context),
                fontWeight: fontWeight ?? FontWeight.w600,
                color: fontColor ?? Colors.grey.shade800,
              )),
      ],
    );
  }
}

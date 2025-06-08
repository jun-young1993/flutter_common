import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/widgets/lib/text/icon_text.dart';

class CardContainerItem extends StatelessWidget {
  const CardContainerItem({
    super.key,
    this.icon,
    this.title,
    this.titleWidget,
    required this.children,
    this.initiallyExpanded = true,
  });

  final IconData? icon;
  final String? title;
  final Widget? titleWidget;
  final List<Widget> children;
  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        title: Row(
          children: [
            IconText(
              icon: icon,
              title: title,
              iconSize: SizeConstants.getMediumIconSize(context),
              textSize: SizeConstants.getTextMediumFontSize(context),
              fontWeight: FontWeight.w500,
              fontColor: Colors.grey.shade700,
            ),
            if (titleWidget != null) titleWidget!,
          ],
        ),
        children: [
          Padding(
            padding:
                EdgeInsets.all(SizeConstants.getContainerAllPadding(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/widgets/lib/text/icon_text.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {super.key,
      this.children = const [],
      this.title,
      this.icon,
      this.onAction,
      this.actionIcon});
  final List<Widget> children;
  final String? title;
  final IconData? icon;
  final VoidCallback? onAction;
  final IconData? actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: SizeConstants.getContainerHorizontalMargin(context),
          vertical: SizeConstants.getContainerVerticalMargin(context)),
      padding: EdgeInsets.all(SizeConstants.getContainerAllPadding(context)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconText(
            icon: icon,
            title: title,
            onAction: onAction,
            actionIcon: actionIcon,
          ),
          if (children.isNotEmpty)
            SizedBox(height: SizeConstants.getColumnSpacing(context)),
          ...children,
        ],
      ),
    );
  }
}

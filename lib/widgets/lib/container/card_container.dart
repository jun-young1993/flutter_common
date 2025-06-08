import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/widgets/lib/text/icon_text.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {super.key, required this.children, this.title, this.icon});
  final List<Widget> children;
  final String? title;
  final IconData? icon;

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
          IconText(icon: icon, title: title),
          SizedBox(height: SizeConstants.getColumnSpacing(context)),
          ...children,
        ],
      ),
    );
  }
}

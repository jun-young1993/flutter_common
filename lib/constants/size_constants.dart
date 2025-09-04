import 'package:flutter/material.dart';

class SizeConstants {
  static const double tabletWidth = 600;
  static const double mobileWidth = 400;
  static double maxWidth(BuildContext context) {
    return isTablet(context) ? tabletWidth : double.infinity;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > tabletWidth;
  }

  static double getContainerAllPadding(BuildContext context) {
    return isTablet(context) ? 24 : 16;
  }

  static double getContainerAllMargin(BuildContext context) {
    return isTablet(context) ? 24 : 16;
  }

  static double getContainerVerticalMargin(BuildContext context) {
    return isTablet(context) ? 24 : 16;
  }

  static double getContainerHorizontalMargin(BuildContext context) {
    return isTablet(context) ? 24 : 16;
  }

  static double getTextLargeFontSize(BuildContext context) {
    return isTablet(context) ? 20 : 18;
  }

  static double getTextMediumFontSize(BuildContext context) {
    return isTablet(context) ? 18 : 16;
  }

  static double getTextSmallFontSize(BuildContext context) {
    return isTablet(context) ? 16 : 14;
  }

  static double getLargeIconSize(BuildContext context) {
    return isTablet(context) ? 24 : 20;
  }

  static double getMediumIconSize(BuildContext context) {
    return isTablet(context) ? 20 : 16;
  }

  static double getSmallIconSize(BuildContext context) {
    return isTablet(context) ? 16 : 12;
  }

  static double getColumnSpacing(BuildContext context) {
    return isTablet(context) ? 10 : 8;
  }

  static double getSmallButtonFontSize(BuildContext context) {
    return isTablet(context) ? 13 : 11;
  }

  static EdgeInsets getSmallButtonPadding(BuildContext context) {
    return isTablet(context)
        ? const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
        : const EdgeInsets.symmetric(horizontal: 14, vertical: 8);
  }

  static double getCountdownDisplaySize(BuildContext context) {
    return isTablet(context) ? 38 : 32;
  }

  static double getTextFieldHintFontSize(BuildContext context) {
    return isTablet(context) ? 14 : 12;
  }

  static double getSmallIconButtonSize(BuildContext context) {
    return isTablet(context) ? 20 : 16;
  }
}

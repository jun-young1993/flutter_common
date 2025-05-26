import 'dart:io';

class CommonConstants {
  static String getIosUrl(String appleId) {
    return 'https://apps.apple.com/app/id$appleId';
  }

  static String getAndroidUrl(String packageName) {
    return 'https://play.google.com/store/apps/details?id=$packageName';
  }

  static String getStoreUrl(String packageName, String? appleId) {
    if (appleId != null) {
      return CommonConstants.getIosUrl(appleId);
    }
    return CommonConstants.getAndroidUrl(packageName);
  }
}

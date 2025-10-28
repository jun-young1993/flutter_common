import 'dart:io';

import 'package:flutter_common/state/app_config/app_config_state.dart';

class CommonConstants {
  static String getIosUrl(AppConfigState appConfig) {
    final appleId = appConfig.appleId;
    if (appConfig.appStoreUrl != null) {
      return appConfig.appStoreUrl!;
    }
    return 'https://apps.apple.com/app/id$appleId';
  }

  static String getAndroidUrl(AppConfigState appConfig) {
    final packageName = appConfig.packageName;
    if (appConfig.googlePlayUrl != null) {
      return appConfig.googlePlayUrl!;
    }
    return 'https://play.google.com/store/apps/details?id=$packageName';
  }

  static String getStoreUrl(AppConfigState appConfig) {
    if (Platform.isIOS) {
      return CommonConstants.getIosUrl(appConfig);
    }
    return CommonConstants.getAndroidUrl(appConfig);
  }
}

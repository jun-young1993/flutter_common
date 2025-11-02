import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/common_constants.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/repositories/app_repository.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:version/version.dart';
import 'package:easy_localization/easy_localization.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  final AppRepository appRepository;
  AppConfigBloc({required this.appRepository})
      : super(AppConfigState.initialize()) {
    on<AppConfigEvent>((event, emit) async {
      try {
        await event.map(
          initialize: (event) async {
            final appConfig = await appRepository.getAppConfig(event.key);
            final language =
                await appRepository.getAppLanguage(event.defaultLocale);
            emit(state.copyWith(
              version: appConfig.version,
              key: appConfig.key,
              description: appConfig.description,
              appleId: appConfig.appleId,
              packageName: appConfig.packageName,
              language: language,
              appStoreUrl: appConfig.appStoreUrl,
              googlePlayUrl: appConfig.googlePlayUrl,
              redirectUrl:
                  '${JunyConstants.junyBlogUrl}/redirect/app/store/name/${appConfig.key}',
            ));
          },
          checkCanUpdate: (event) async {
            final appConfig = await appRepository.getAppConfig(event.key);

            emit(state.copyWith(
              isUpdateAvailable: Version.parse(event.version) <
                  Version.parse(appConfig.version),
            ));
          },
          moveUpdateStore: (event) async {
            if (state.redirectUrl == null) {
              throw Exception("No redirect URL found");
            }
            Uri storeUri = Uri.parse(state.redirectUrl!);

            if (await canLaunchUrl(storeUri)) {
              await launchUrl(storeUri);
            } else {
              throw Exception("Failed to launch URL: $storeUri");
            }
          },
          setLanguage: (event) async {
            await appRepository.setAppLanguage(event.language);
            emit(state.copyWith(language: event.language));
          },
        );
      } catch (e, s) {
        debugPrint("app config error: $e");
        debugPrint("app config error stack trace: $s");
        emit(state.copyWith(key: ""));
      }
    });
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/common_constants.dart';
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
            final language = await appRepository.getAppLanguage();
            emit(state.copyWith(
              version: appConfig.version,
              key: appConfig.key,
              description: appConfig.description ?? "",
              appleId: appConfig.appleId,
              packageName: appConfig.packageName,
              language: language,
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
            Uri storeUri = Uri.parse(
                CommonConstants.getStoreUrl(state.packageName, state.appleId));

            if (await canLaunchUrl(storeUri)) {
              print("launchUrl: $storeUri");
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
      } catch (e) {
        print("app config error: $e");
        emit(state.copyWith(key: ""));
      }
    });
  }
}

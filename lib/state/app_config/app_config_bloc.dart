import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/repositories/app_repository.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  AppConfigBloc() : super(AppConfigState.initialize()) {
    final appRepository = AppDefaultRepository();
    on<AppConfigEvent>((event, emit) async {
      try {
        await event.map(
          initialize: (event) async {
            print("app config initialize: ${event.key}");
            final appConfig = await appRepository.getAppConfig(event.key);

            emit(state.copyWith(
              version: appConfig.version,
              key: appConfig.key,
              description: appConfig.description ?? "",
            ));
          },
        );
      } catch (e) {
        print("app config error: $e");
        emit(state.copyWith(key: ""));
      }
    });
  }
}

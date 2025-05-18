import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  AppConfigBloc() : super(AppConfigState.initialize()) {
    on<AppConfigEvent>((event, emit) async {
      try {
        await event.map(
          initialize: (event) async {
            emit(state.copyWith(key: '1234567890'));
          },
        );
      } catch (e) {
        emit(state.copyWith(key: null));
      }
    });
  }
}

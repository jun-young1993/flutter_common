import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';

class AppConfigSelector<T>
    extends BlocSelector<AppConfigBloc, AppConfigState, T> {
  const AppConfigSelector({
    Key? key,
    required T Function(AppConfigState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(
          key: key,
          selector: selector,
          builder: builder,
        );
}

class RemoteAppConfigSelector extends AppConfigSelector<AppConfigState?> {
  RemoteAppConfigSelector(Widget Function(AppConfigState? appConfig) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state,
          builder: (context, appConfig) => builder(appConfig),
        );
}

class AppConfigLanguageSelector extends AppConfigSelector<AppLanguage> {
  AppConfigLanguageSelector(Widget Function(AppLanguage appConfig) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.language,
          builder: (context, appConfig) => builder(appConfig),
        );
}

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/app_config/index.dart';
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

class RemoteAppConfigSelector extends AppConfigSelector<AppConfig?> {
  RemoteAppConfigSelector(Widget Function(AppConfig? appConfig) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => AppConfig(
              key: state.key ?? '', version: state.version ?? '0.0.0'),
          builder: (context, appConfig) => builder(appConfig),
        );
}

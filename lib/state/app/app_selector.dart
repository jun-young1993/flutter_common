import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/app/app_bloc.dart';
import 'package:flutter_common/state/app/app_state.dart';

class AppSelector<T> extends BlocSelector<AppBloc, AppState, T> {
  const AppSelector({
    super.key,
    required super.selector,
    required super.builder,
  });
}

class AppExceptionSelector extends AppSelector<AppException?> {
  AppExceptionSelector(Widget Function(AppException? exception) builder,
      {super.key})
      : super(
          selector: (state) => state.error,
          builder: (context, exception) => builder(exception),
        );
}

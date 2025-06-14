import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/verification/verification_bloc.dart';
import 'package:flutter_common/state/verification/verification_state.dart';

class VerificationSelector<T>
    extends BlocSelector<VerificationBloc, VerificationState, T> {
  const VerificationSelector({
    Key? key,
    required T Function(VerificationState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(
          key: key,
          selector: selector,
          builder: builder,
        );
}

class VerificationLoadingSelector extends VerificationSelector<bool> {
  VerificationLoadingSelector(Widget Function(bool isLoading) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isLoading,
          builder: (context, isLoading) => builder(isLoading),
        );
}

class VerificationErrorSelector extends VerificationSelector<AppException?> {
  VerificationErrorSelector(Widget Function(AppException? error) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.error,
          builder: (context, error) => builder(error),
        );
}

class VerificationEmailVerifyingSelector extends VerificationSelector<bool> {
  VerificationEmailVerifyingSelector(
      Widget Function(bool isEmailVerifying) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.isEmailVerifying,
          builder: (context, isEmailVerifying) => builder(isEmailVerifying),
        );
}

class VerificationEmailSelector extends VerificationSelector<String?> {
  VerificationEmailSelector(Widget Function(String? email) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.email,
          builder: (context, email) => builder(email),
        );
}

class VerificationRemainingTimeSelector extends VerificationSelector<int> {
  VerificationRemainingTimeSelector(Widget Function(int remainingTime) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.remainingSeconds,
          builder: (context, remainingTime) => builder(remainingTime),
        );
}

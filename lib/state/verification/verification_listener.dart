import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/user/user_bloc.dart';
import 'package:flutter_common/state/user/user_event.dart';
import 'package:flutter_common/state/verification/verification_bloc.dart';
import 'package:flutter_common/state/verification/verification_event.dart';
import 'package:flutter_common/state/verification/verification_state.dart';
import 'package:flutter_common/widgets/toast/toast.dart';

class VerificationListener
    extends BlocListener<VerificationBloc, VerificationState> {
  VerificationListener({super.key})
      : super(listener: (context, state) {
          final userBloc = context.read<UserBloc>();
          if (state.successMessage != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Toast.showSuccess(
                context,
                message: state.successMessage!,
              );
            });
          }
          if (state.error != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Toast.showError(
                context,
                error: state.error!,
              );
            });
          }
          if (state.isVerified && !state.isEmailVerifying) {
            userBloc.add(const UserEvent.initialize());
          }
        });
}

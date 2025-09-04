import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice/notice_state.dart';
import 'package:flutter_common/widgets/toast/toast.dart';

class NoticeListener extends BlocListener<NoticeBloc, NoticeState> {
  NoticeListener({super.key})
      : super(listener: (context, state) {
          if (state.successMessage != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Toast.show(context,
                  message: state.successMessage!, type: ToastType.success);
            });
          }
          if (state.error != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Toast.show(context,
                  message: state.error!.message ?? 'unknown',
                  type: ToastType.error);
            });
          }
        });
}

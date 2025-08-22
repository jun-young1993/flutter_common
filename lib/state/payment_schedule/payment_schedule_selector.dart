import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_bloc.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_state.dart';

class PaymentScheduleSelector<T>
    extends BlocSelector<PaymentScheduleBloc, PaymentScheduleState, T> {
  const PaymentScheduleSelector({
    Key? key,
    required T Function(PaymentScheduleState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class PaymentStatuesSelector
    extends PaymentScheduleSelector<List<Map<String, dynamic>>> {
  PaymentStatuesSelector(Widget Function(List<Map<String, dynamic>>) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.paymentStatus,
          builder: (context, paymentStatus) => builder(paymentStatus),
        );
}

import 'package:flutter_common/repositories/payment_schedule_repository.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_event.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentScheduleBloc
    extends Bloc<PaymentScheduleEvent, PaymentScheduleState> {
  final PaymentScheduleRepository _paymentScheduleRepository;

  PaymentScheduleBloc(
      {required PaymentScheduleRepository paymentScheduleRepository})
      : _paymentScheduleRepository = paymentScheduleRepository,
        super(PaymentScheduleState.initialize()) {
    on<PaymentScheduleEvent>(
      (event, emit) async {
        await event.map(
          getPaymentStatus: (e) async {
            final paymentStatus =
                await _paymentScheduleRepository.getPaymentStatus();
            emit(state.copyWith(paymentStatus: paymentStatus));
          },
        );
      },
    );
  }
}

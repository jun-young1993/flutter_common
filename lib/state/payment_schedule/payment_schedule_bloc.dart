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
          findAll: (e) async {
            final paymentSchedules =
                await _paymentScheduleRepository.findAllByLoanId(
              e.loanId,
              skip: state.skipCount * state.take,
              take: state.take,
              order: state.order,
            );
            emit(state.copyWith(
              paymentSchedules: [
                ...(state.paymentSchedules ?? []),
                ...(paymentSchedules)
              ],
              hasMore: paymentSchedules.isNotEmpty,
            ));
          },
          addSkip: (e) async {
            emit(state.copyWith(skipCount: state.skipCount + 1));
            add(PaymentScheduleEvent.findAll(e.loanId));
          },
          setOrder: (e) async {
            emit(state.copyWith(order: e.order, skipCount: 0));
            add(PaymentScheduleEvent.findAll(e.loanId));
          },
        );
      },
    );
  }
}

import 'package:flutter_common/repositories/payment_schedule_repository.dart';
import 'package:flutter_common/state/loan_summery/loan_summery_event.dart';
import 'package:flutter_common/state/loan_summery/loan_summery_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanSummeryBloc extends Bloc<LoanSummeryEvent, LoanSummeryState> {
  final PaymentScheduleRepository _paymentScheduleRepository;

  LoanSummeryBloc(
      {required PaymentScheduleRepository paymentScheduleRepository})
      : _paymentScheduleRepository = paymentScheduleRepository,
        super(const LoanSummeryState()) {
    on<LoanSummeryEvent>(
      (event, emit) async {
        await event.map(
          getLoanSummery: (e) async {
            emit(state.copyWith(isLoading: true));
            final loanRepaymentSummary = await _paymentScheduleRepository
                .getLoanRepaymentSummary(e.loanId);
            emit(state.copyWith(
                isLoading: false, loanRepaymentSummary: loanRepaymentSummary));
          },
        );
      },
    );
  }
}

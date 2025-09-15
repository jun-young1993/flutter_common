import 'package:flutter_common/models/payment_schedule/payment_schedule.dart';
import 'package:flutter_common/repositories/payment_schedule_repository.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_bloc.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_event.dart';
import 'package:flutter_common/state/payment_schedule/payment_schedule_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

sealed class PaymentSchedulePageEvent {}

final class FetchNextPaymentSchedule extends PaymentSchedulePageEvent {
  final String loanId;
  final String? status;
  FetchNextPaymentSchedule(this.loanId, {this.status});
}

final class ClearPaymentSchedule extends PaymentSchedulePageEvent {}

final class ChangeOrder extends PaymentSchedulePageEvent {
  final String order; // 'ASC' 또는 'DESC'
  ChangeOrder(this.order);
}

final class ChangeFilter extends PaymentSchedulePageEvent {
  final String? status;
  ChangeFilter({this.status});
}

class PaymentSchedulePageBloc
    extends Bloc<PaymentSchedulePageEvent, PagingState<int, PaymentSchedule>> {
  final PaymentScheduleRepository paymentScheduleRepository;
  String _currentOrder = 'ASC';
  String _currentLoanId = '';
  String? _currentStatus = null;
  PaymentSchedulePageBloc({required this.paymentScheduleRepository})
      : super(PagingState()) {
    on<ClearPaymentSchedule>((event, emit) {
      _currentOrder = 'ASC';
      _currentLoanId = '';
      _currentStatus = null;
      emit(PagingState());
    });

    on<ChangeOrder>((event, emit) async {
      _currentOrder = event.order;
      // 정렬 순서가 변경되면 기존 리스트를 클리어하고 다시 로드
      emit(PagingState());
      add(FetchNextPaymentSchedule(_currentLoanId, status: _currentStatus));
    });

    on<ChangeFilter>((event, emit) async {
      _currentStatus = event.status;
      emit(PagingState());
      add(FetchNextPaymentSchedule(_currentLoanId, status: _currentStatus));
    });

    on<FetchNextPaymentSchedule>((event, emit) async {
      if (state.isLoading) return;

      _currentLoanId = event.loanId;

      emit(state.copyWith(isLoading: true, error: null));
      try {
        final newKey = (state.keys?.last ?? 0) + 1;
        final paymentSchedules =
            await paymentScheduleRepository.findAllByLoanId(
          event.loanId,
          skip: (newKey - 1) * 10,
          take: 10,
          order: _currentOrder,
          status: event.status,
        );

        final isLastPage = paymentSchedules.isEmpty;

        emit(state.copyWith(
          keys: [...?state.keys, newKey],
          pages: [...?state.pages, paymentSchedules],
          hasNextPage: !isLastPage,
          isLoading: false,
        ));
      } catch (e) {
        print(e);
        emit(state.copyWith(error: e, isLoading: false));
      }
    });
  }

  // 현재 정렬 순서 getter
  String get currentOrder => _currentOrder;
}

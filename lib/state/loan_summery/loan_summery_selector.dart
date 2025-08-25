import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/loan_repayment_summary/loan_repayment_summary.dart';
import 'package:flutter_common/state/loan_summery/loan_summery_bloc.dart';
import 'package:flutter_common/state/loan_summery/loan_summery_state.dart';

class LoanSummerySelector<T>
    extends BlocSelector<LoanSummeryBloc, LoanSummeryState, T> {
  const LoanSummerySelector({
    Key? key,
    required T Function(LoanSummeryState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(key: key, selector: selector, builder: builder);
}

class LoanSummeryLoadingSelector extends LoanSummerySelector<bool> {
  LoanSummeryLoadingSelector(Widget Function(bool) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.isLoading,
          builder: (context, isLoading) => builder(isLoading),
        );
}

class LoanSummeryRepaymentSummarySelector
    extends LoanSummerySelector<LoanRepaymentSummary?> {
  LoanSummeryRepaymentSummarySelector(
      Widget Function(LoanRepaymentSummary?) builder,
      {Key? key})
      : super(
          key: key,
          selector: (state) => state.loanRepaymentSummary,
          builder: (context, loanRepaymentSummary) =>
              builder(loanRepaymentSummary),
        );
}

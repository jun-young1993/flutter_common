import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/models/goal/goal.dart';
import 'package:flutter_common/state/goal/goal_bloc.dart';
import 'package:flutter_common/state/goal/goal_state.dart';

class GoalSelector<T> extends BlocSelector<GoalBloc, GoalState, T> {
  const GoalSelector({
    Key? key,
    required T Function(GoalState) selector,
    required Widget Function(BuildContext, T) builder,
  }) : super(
          key: key,
          selector: selector,
          builder: builder,
        );
}

class GoalsSelector extends GoalSelector<List<Goal>> {
  GoalsSelector(Widget Function(List<Goal> goals) builder, {Key? key})
      : super(
          key: key,
          selector: (state) => state.goals,
          builder: (context, goals) => builder(goals),
        );
}

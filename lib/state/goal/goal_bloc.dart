import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/goal_repository.dart';
import 'package:flutter_common/state/goal/goal_event.dart';
import 'package:flutter_common/state/goal/goal_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoalBloc extends Bloc<GoalEvent, GoalState> {
  final GoalRepository repository;

  GoalBloc({required this.repository}) : super(GoalState.initialize()) {
    on<GoalEvent>(
      (event, emit) async {
        await event.map(
          initialize: (e) async {
            final goals = await repository.getGoals();
            emit(state.copyWith(goals: goals));
          },
          createGoal: (e) async {
            final goal = await repository.createGoal(e.goal);

            await _handleEvent(emit, () async {
              emit(state.copyWith(goals: [goal, ...state.goals]));
            });
          },
          updateGoal: (e) async {
            await _handleEvent(emit, () async {});
          },
          deleteGoal: (e) async {
            await _handleEvent(emit, () async {});
          },
          addGoalUser: (e) async {
            await _handleEvent(emit, () async {});
          },
          removeGoalUser: (e) async {
            await _handleEvent(emit, () async {});
          },
          clearError: (e) async {
            emit(state.copyWith(isLoading: false, error: null));
          },
          addGoalProgress: (e) async {
            final goal = await repository.addGoalProgress(e.progress);

            await _handleEvent(emit, () async {
              final updatedGoals =
                  state.goals.map((g) => g.id == goal.id ? goal : g).toList();
              emit(state.copyWith(goals: updatedGoals));
            });
          },
        );
      },
    );
  }

  Future<void> _handleEvent<T>(
    Emitter<GoalState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await action();

      add(const GoalEvent.clearError());
    } on AppException catch (e) {
      print('🔥 [ERROR] AppException: $e');

      emit(state.copyWith(isLoading: false, error: e));
    } catch (e) {
      print('🔥 [ERROR] Unknown error: $e');

      emit(state.copyWith(
          isLoading: false,
          error: defaultError ?? AppException.unknown(e.toString())));
    }
  }
}

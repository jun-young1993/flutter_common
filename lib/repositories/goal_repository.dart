import 'package:flutter_common/models/goal/goal.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class GoalRepository {
  Future<List<Goal>> getGoals();
  Future<void> createGoal(Goal goal);
  Future<void> updateGoal(Goal goal);
  Future<void> deleteGoal(String goalId);
  Future<void> addGoalUser(String goalId, String userId);
  Future<void> removeGoalUser(String goalId, String userId);
}

class GoalDefaultRepository extends GoalRepository {
  final DioClient _dioClient;

  GoalDefaultRepository() : _dioClient = DioClient();

  @override
  Future<List<Goal>> getGoals() async {
    final response = await _dioClient.get<dynamic>('/goals');

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data as List<dynamic>;
      return data.map((e) => Goal.fromJson(e as Map<String, dynamic>)).toList();
    }
    throw Exception('Failed to load goals: ${response.statusCode}');
  }

  @override
  Future<void> createGoal(Goal goal) async {
    // TODO: implement createGoal
    final response = await _dioClient.post(
      '/goals',
      data: goal.toJson(),
    );
  }

  @override
  Future<void> updateGoal(Goal goal) async {
    // TODO: implement updateGoal
  }

  @override
  Future<void> deleteGoal(String goalId) async {
    // TODO: implement deleteGoal
  }

  @override
  Future<void> addGoalUser(String goalId, String userId) async {
    // TODO: implement addGoalUser
  }

  @override
  Future<void> removeGoalUser(String goalId, String userId) async {
    // TODO: implement removeGoalUser
  }
}

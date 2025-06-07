import 'package:flutter_common/models/goal/dto/create_goal_dto.dart';
import 'package:flutter_common/models/goal/dto/create_goal_progress_dto.dart';
import 'package:flutter_common/models/goal/goal.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class GoalRepository {
  Future<List<Goal>> getGoals();
  Future<Goal> createGoal(CreateGoalDto goal);
  Future<void> updateGoal(Goal goal);
  Future<void> deleteGoal(String goalId);
  Future<void> addGoalUser(String goalId, String userId);
  Future<void> removeGoalUser(String goalId, String userId);
  Future<Goal> addGoalProgress(CreateGoalProgressDto progress);
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
  Future<Goal> createGoal(CreateGoalDto goal) async {
    // TODO: implement createGoal
    final response = await _dioClient.post(
      '/goals',
      data: goal.toJson(),
    );

    if (response.statusCode == 201) {
      return Goal.fromJson(response.data);
    }
    throw Exception('Failed to create goal: ${response.statusCode}');
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

  @override
  Future<Goal> addGoalProgress(CreateGoalProgressDto progress) async {
    final response = await _dioClient.post(
      '/goals/${progress.goalId}/users/${progress.goalUserId}/progress',
      data: progress.toJson(),
    );

    if (response.statusCode == 200) {
      return Goal.fromJson(response.data);
    }
    throw Exception('Failed to add goal progress: ${response.statusCode}');
  }
}

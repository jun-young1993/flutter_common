import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/app-reward/point_transaction.dart';
import 'package:flutter_common/repositories/app_reward_repository.dart';
import 'package:flutter_common/repositories/user_repository.dart';
import 'package:flutter_common/state/app_reward/app_reward_event.dart';
import 'package:flutter_common/state/app_reward/app_reward_state.dart';

class AppRewardBloc extends Bloc<AppRewardEvent, AppRewardState> {
  final AppRewardRepository appRewardRepository;
  final UserRepository userRepository;

  AppRewardBloc({
    required this.appRewardRepository,
    required this.userRepository,
  }) : super(AppRewardState.initialize()) {
    on<AppRewardEvent>(
      (event, emit) async {
        await event.map(
          initialize: (e) async {
            final user = await userRepository.getUserInfo();

            await _handleEvent(emit, () async {
              final userPointBalance =
                  await appRewardRepository.getUserPointBalance(
                user.id,
              );

              emit(state.copyWith(userPointBalance: userPointBalance));
            });
          },
          clearError: (e) async {
            emit(state.copyWith(isLoading: false, error: null));
          },
          getPointTransactions: (e) async {
            await _handleEvent(emit, () async {
              final user = await userRepository.getUserInfo();
              final pointTransactions =
                  await appRewardRepository.getPointTransactions(
                user.id,
              );

              emit(state.copyWith(pointTransactions: pointTransactions));
            });
          },
          getDailyUserReward: (e) async {
            await _handleEvent(emit, () async {
              final user = await userRepository.getUserInfo();
              final dailyUserReward =
                  await appRewardRepository.getDailyUserReward(
                user.id,
                type: e.type,
              );
              final userRewardByType = dailyUserReward
                  ?.where((userReward) => userReward.rewardType == e.type)
                  .toList()
                  .firstOrNull;
              if (userRewardByType != null && e.type != null) {
                // 기존 상태를 유지하면서 새로운 항목만 추가/수정
                final updatedDailyUserReward =
                    Map<PointTransactionSource, UserReward?>.from(
                  state.dailyUserReward,
                );
                updatedDailyUserReward[e.type!] = userRewardByType;

                emit(state.copyWith(dailyUserReward: updatedDailyUserReward));
              }
            });
          },
          createWithdrawal: (e) async {
            await _handleEvent(emit, () async {
              final user = await userRepository.getUserInfo();
              final userPointBalance = state.userPointBalance;
              if (userPointBalance == null) {
                throw const AppException.unknown(
                    'User point balance not found');
              }
              final isSuccess = await appRewardRepository.createWithdrawal(
                userPointBalance,
                user,
                e.bankName,
                e.accountNumber,
                e.accountHolder,
                e.withdrawalAmount,
              );
              if (isSuccess) {
                add(const AppRewardEvent.initialize());
              } else {
                throw const AppException.unknown('Failed to create withdrawal');
              }
            });
          },
        );
      },
    );
  }

  Future<void> _handleEvent<T>(
    Emitter<AppRewardState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await action();

      add(const AppRewardEvent.clearError());
    } on AppException catch (e) {
      print('🔥 [ERROR] AppException: $e');

      emit(state.copyWith(isLoading: false, error: e));
    } catch (e, stackTrace) {
      print('🔥 [ERROR] Unknown error: $e');
      print('🔥 [ERROR] Stack trace: $stackTrace');

      emit(state.copyWith(
          isLoading: false,
          error: defaultError ?? AppException.unknown(e.toString())));
    }
  }
}

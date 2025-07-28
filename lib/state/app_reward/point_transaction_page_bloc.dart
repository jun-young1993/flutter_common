import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/models/app-reward/point_transaction.dart';
import 'package:flutter_common/repositories/app_reward_repository.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

sealed class PointTransactionEvent {}

final class FetchNextPointTransaction extends PointTransactionEvent {}

class PointTransactionPagingBloc
    extends Bloc<PointTransactionEvent, PagingState<int, PointTransaction>> {
  final AppRewardRepository appRewardRepository;
  final UserRepository userRepository;
  PointTransactionPagingBloc({
    required this.appRewardRepository,
    required this.userRepository,
  }) : super(PagingState()) {
    on<FetchNextPointTransaction>((event, emit) async {
      if (state.isLoading) return;
      emit(state.copyWith(isLoading: true, error: null));

      try {
        final newKey = (state.keys?.last ?? 0) + 1;
        final limit = 10;
        final user = await userRepository.getUserInfo();

        final newItems = await appRewardRepository.getPointTransactions(
          user.id,
          offset: (newKey - 1) * limit,
          limit: limit,
        );
        final isLastPage = newItems.isEmpty;

        emit(
          state.copyWith(
            pages: [...?state.pages, newItems],
            keys: [...?state.keys, newKey],
            hasNextPage: !isLastPage,
            isLoading: false,
          ),
        );
      } catch (error) {
        emit(state.copyWith(error: error, isLoading: false));
      }
    });
  }
}

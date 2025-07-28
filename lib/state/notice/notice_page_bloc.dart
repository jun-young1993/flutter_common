import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/repositories/notice_repository.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

sealed class NoticePageEvent {}

final class FetchNextNotice extends NoticePageEvent {
  final String groupName;
  FetchNextNotice(this.groupName);
}

class NoticePageBloc extends Bloc<NoticePageEvent, PagingState<int, Notice>> {
  final NoticeRepository noticeRepository;

  NoticePageBloc({required this.noticeRepository}) : super(PagingState()) {
    on<FetchNextNotice>((event, emit) async {
      if (state.isLoading) return;
      emit(state.copyWith(isLoading: true, error: null));

      try {
        final newKey = (state.keys?.last ?? 0) + 1;
        const limit = 10;

        final newItems = await noticeRepository.findAll(
          event.groupName,
          (newKey - 1) * limit,
          limit,
        );
        final isLastPage = newItems?.isEmpty ?? true;

        emit(
          state.copyWith(
            pages: [...?state.pages, newItems ?? []],
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

import 'package:flutter_common/flutter_common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

sealed class NoticePageEvent {}

final class FetchNextNotice extends NoticePageEvent {
  final String groupName;
  final String? title;
  FetchNextNotice(this.groupName, {this.title});
}

final class ClearNotice extends NoticePageEvent {}

class NoticePageBloc extends Bloc<NoticePageEvent, PagingState<int, Notice>> {
  final NoticeRepository noticeRepository;

  NoticePageBloc({required this.noticeRepository}) : super(PagingState()) {
    on<ClearNotice>((event, emit) {
      emit(PagingState());
    });
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
          title: event.title,
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

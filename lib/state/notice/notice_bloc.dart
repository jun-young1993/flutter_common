import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/notice_repository.dart';
import 'package:flutter_common/state/notice/notice_event.dart';
import 'package:flutter_common/state/notice/notice_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoticeBloc extends Bloc<NoticeEvent, NoticeState> {
  final NoticeRepository _noticeRepository;

  NoticeBloc({required NoticeRepository noticeRepository})
      : _noticeRepository = noticeRepository,
        super(NoticeState.initialize()) {
    on<NoticeEvent>(
      (event, emit) async {
        await event.map(
          findAll: (e) async {
            await _handleEvent(
              emit,
              () async {
                final notices = await _noticeRepository.findAll(
                    e.name, state.skipCount * state.take, state.take);
                emit(state.copyWith(
                    notices: [...(state.notices ?? []), ...(notices ?? [])],
                    hasMore: notices?.isNotEmpty ?? false));
              },
            );
          },
          addSkip: (e) async {
            if (state.isLoading == true) return;

            await _handleEvent(
              emit,
              () async {
                emit(state.copyWith(skipCount: state.skipCount + 1));
                add(NoticeEvent.findAll(e.name));
              },
            );
          },
        );
      },
    );
  }
  Future<void> _handleEvent<T>(
    Emitter<NoticeState> emit,
    Future<T> Function() action, {
    AppException? defaultError,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await action();
    } on AppException catch (e) {
      print('🔥 [ERROR] AppException: $e');
      emit(state.copyWith(error: e));
    } catch (e) {
      print('🔥 [ERROR] Unknown error: $e');
      emit(state.copyWith(
          error: defaultError ?? AppException.unknown(e.toString())));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}

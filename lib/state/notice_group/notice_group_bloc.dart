import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/notice_group_repository.dart';
import 'package:flutter_common/state/notice_group/notice_group_event.dart';
import 'package:flutter_common/state/notice_group/notice_group_state.dart';

class NoticeGroupBloc extends Bloc<NoticeGroupEvent, NoticeGroupState> {
  final NoticeGroupRepository _noticeGroupRepository;

  NoticeGroupBloc({required NoticeGroupRepository noticeGroupRepository})
      : _noticeGroupRepository = noticeGroupRepository,
        super(NoticeGroupState.initialize()) {
    on<NoticeGroupEvent>(
      (event, emit) async {
        await event.map(
          initialize: (event) async {
            await _handleEvent(
              emit,
              () async {
                try {
                  final checkNoticeGroup =
                      await _noticeGroupRepository.findOneByName(event.name,
                          withNotices: event.withNotices);
                  emit(state.copyWith(noticeGroup: checkNoticeGroup));
                } catch (e) {
                  final noticeGroup =
                      await _noticeGroupRepository.create(event.name);
                  emit(state.copyWith(noticeGroup: noticeGroup));
                }
              },
            );
          },
          findNoticeGroup: (e) async {
            await _handleEvent(
              emit,
              () async {
                final noticeGroup =
                    await _noticeGroupRepository.findOneByName(e.name);
                emit(state.copyWith(noticeGroup: noticeGroup));
              },
            );
          },
          createNoticeGroup: (e) async {
            await _handleEvent(
              emit,
              () async {
                final noticeGroup = await _noticeGroupRepository.create(e.name);
                emit(state.copyWith(noticeGroup: noticeGroup));
              },
            );
          },
        );
      },
    );
  }

  Future<void> _handleEvent<T>(
    Emitter<NoticeGroupState> emit,
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

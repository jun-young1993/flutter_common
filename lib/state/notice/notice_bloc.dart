import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_common/common_il8n.dart';
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
          findOneById: (e) async {
            await _handleEvent(
              emit,
              () async {
                final notice =
                    await _noticeRepository.findOneById(e.id, e.userId);
                emit(state.copyWith(
                    notices: state.notices
                        ?.map((prev) => prev.id == notice.id ? notice : prev)
                        .toList()));
              },
            );
          },
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
          create: (e) async {
            await _handleEvent(
              emit,
              () async {
                final notice = await _noticeRepository.create(
                    e.title, e.content, e.type, e.noticeGroupId, e.userId,
                    createdAt: e.createdAt);

                emit(state.copyWith(
                  notices: [notice, ...(state.notices ?? [])],
                  successMessage: Tr.message.createNotice.tr(),
                ));
              },
            );
          },
          report: (e) async {
            await _handleEvent(
              emit,
              () async {
                await _noticeRepository.report(
                    e.noticeId, e.reporterId, e.type, e.comment);
                emit(state.copyWith(
                  successMessage: Tr.message.reportNotice.tr(),
                ));
              },
            );
          },
          removeSuccessMessage: (e) {
            emit(state.copyWith(successMessage: null));
          },
          checkNoticeExistence: (e) async {
            await _handleEvent(
              emit,
              () async {
                emit(state.copyWith(isNoticeExistenceByMonthLoading: true));
                final noticeExistenceByMonth = await _noticeRepository
                    .checkNoticeExistence(e.name, e.year, e.month);
                emit(state.copyWith(
                  noticeExistenceByMonth: noticeExistenceByMonth,
                  isNoticeExistenceByMonthLoading: false,
                ));
              },
            );
          },
          findAllByDate: (e) async {
            await _handleEvent(
              emit,
              () async {
                emit(state
                    .copyWith(noticesByDate: [], isNoticesByDateLoading: true));
                final notices = await _noticeRepository.findAllByMonth(
                    e.name, e.year, e.month, e.day);
                emit(state.copyWith(
                    noticesByDate: notices, isNoticesByDateLoading: false));
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
      emit(state.copyWith(isLoading: false, error: null, successMessage: null));
    }
  }
}

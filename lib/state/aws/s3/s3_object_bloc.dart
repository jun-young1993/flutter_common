import 'package:collection/collection.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/repositories/aws_s3_repository.dart';
import 'package:flutter_common/state/aws/s3/s3_object_event.dart';
import 'package:flutter_common/state/aws/s3/s3_object_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class S3ObjectBloc extends Bloc<S3ObjectEvent, S3ObjectState> {
  final AwsS3Repository s3ObjectRepository;
  final AppKeys appKeys;

  S3ObjectBloc({required this.s3ObjectRepository, required this.appKeys})
      : super(S3ObjectState.initialize()) {
    on<S3ObjectEvent>(
      (event, emit) async {
        await event.map(initialize: (e) async {
          emit(S3ObjectState.initialize());
        }, getS3Objects: (e) async {
          emit(state.copyWith(isLoading: true));
          final s3Objects =
              await s3ObjectRepository.getS3Object(e.skip, e.take);
          emit(state.copyWith(s3Objects: s3Objects, isLoading: false));
        }, uploadFile: (e) async {
          emit(state.copyWith(isUploading: true));
          await s3ObjectRepository.uploadFile(e.file, e.user, appKeys);
          emit(state.copyWith(isUploading: false));
          add(const S3ObjectEvent.getS3Objects(0, 6));
        }, deleteFile: (e) async {
          emit(state.copyWith(isDeleting: true));
          await s3ObjectRepository.deleteFile(e.s3Object, e.user, appKeys);
          emit(state.copyWith(isDeleting: false));
          add(const S3ObjectEvent.getS3Objects(0, 6));
        }, clearError: (e) async {
          emit(state.copyWith(
              isLoading: false, isUploading: false, error: null));
        }, findOneOrFail: (e) async {
          emit(state.copyWith(isLoading: true, like: null, s3Object: null));
          final s3Object = await s3ObjectRepository.findOneOrFail(e.id);

          final like = s3Object.likes?.firstWhereOrNull(
            (element) => element.userId == e.user.id,
          );

          emit(state.copyWith(
            s3Object: s3Object,
            like: like,
            isLoading: false,
          ));
          add(S3ObjectEvent.getS3ObjectSurround(s3Object));
        }, count: (e) async {
          emit(state.copyWith(isAllCountLoading: true));
          final allCount = await s3ObjectRepository.count();
          emit(state.copyWith(allCount: allCount, isAllCountLoading: false));
        }, checkObjectsExistenceByMonth: (e) async {
          emit(state.copyWith(isObjectsExistenceByMonthLoading: true));
          final objectsExistenceByMonth = await s3ObjectRepository
              .checkObjectsExistenceByMonth(e.year, e.month);
          emit(state.copyWith(
              objectsExistenceByMonth: objectsExistenceByMonth,
              isObjectsExistenceByMonthLoading: false));
        }, getObjectsByDate: (e) async {
          emit(state.copyWith(isObjectsByDateLoading: true));
          final objectsByDate =
              await s3ObjectRepository.getObjectsByDate(e.year, e.month, e.day);
          emit(state.copyWith(
              objectsByDate: objectsByDate, isObjectsByDateLoading: false));
        }, likeS3Object: (e) async {
          await s3ObjectRepository.likeS3Object(e.s3Object, e.user);
          add(S3ObjectEvent.findOneOrFail(e.s3Object.id, e.user));
        }, removeLikeS3Object: (e) async {
          await s3ObjectRepository.removeLikeS3Object(e.s3ObjectLike);
          add(S3ObjectEvent.findOneOrFail(e.s3ObjectLike.s3ObjectId, e.user));
        }, replyS3Object: (e) async {
          await s3ObjectRepository.replyS3Object(e.s3Object, e.user, e.content);
          add(S3ObjectEvent.findOneOrFail(e.s3Object.id, e.user));
        }, removeReplyS3Object: (e) async {
          await s3ObjectRepository.removeReplyS3Object(e.s3ObjectReply);
          add(S3ObjectEvent.findOneOrFail(e.s3ObjectReply.s3ObjectId, e.user));
        }, reportS3Object: (e) async {
          await s3ObjectRepository.reportS3Object(
              e.s3Object, e.type, e.content);
        }, reportS3ObjectReply: (e) async {
          await s3ObjectRepository.reportS3ObjectReply(
              e.s3ObjectReply, e.type, e.content);
        }, getS3ObjectSurround: (e) async {
          emit(state.copyWith(
              isS3ObjectSurroundLoading: true, s3ObjectSurround: null));
          final s3ObjectSurround =
              await s3ObjectRepository.getS3ObjectSurround(e.s3Object);
          emit(state.copyWith(
              s3ObjectSurround: s3ObjectSurround,
              isS3ObjectSurroundLoading: false));
        });
      },
    );
  }
}

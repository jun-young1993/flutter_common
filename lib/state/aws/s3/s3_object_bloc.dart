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
        }, clearError: (e) async {
          emit(state.copyWith(
              isLoading: false, isUploading: false, error: null));
        }, findOneOrFail: (e) async {
          emit(state.copyWith(isLoading: true));
          final s3Object = await s3ObjectRepository.findOneOrFail(e.id);
          emit(state.copyWith(s3Object: s3Object, isLoading: false));
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
        });
      },
    );
  }
}

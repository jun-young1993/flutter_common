import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

sealed class S3ObjectPageEvent {}

final class FetchNextS3Object extends S3ObjectPageEvent {
  final User user;
  FetchNextS3Object(this.user);
}

final class ClearS3Object extends S3ObjectPageEvent {}

class S3ObjectPageBloc
    extends Bloc<S3ObjectPageEvent, PagingState<int, S3Object>> {
  final AwsS3Repository s3ObjectRepository;
  S3ObjectPageBloc({required this.s3ObjectRepository}) : super(PagingState()) {
    on<ClearS3Object>((event, emit) {
      emit(PagingState());
    });
    on<FetchNextS3Object>((event, emit) async {
      if (state.isLoading) return;
      emit(state.copyWith(isLoading: true, error: null));
      try {
        final newKey = (state.keys?.last ?? 0) + 1;
        const limit = 10;

        final newItems = await s3ObjectRepository.getS3Object(
          event.user,
          (newKey - 1) * limit,
          limit,
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
      } catch (e) {
        emit(state.copyWith(error: e, isLoading: false));
      }
    });
  }
}

// final class S3ObjectPageBloc extends BaseBloc<S3ObjectPageEvent, S3ObjectPageState> {
//   final S3ObjectRepository s3ObjectRepository;

//   S3ObjectPageBloc({required this.s3ObjectRepository}) : super(S3ObjectPageState.initialize()) {
//     on<S3ObjectPageEvent>((event, emit) async {
//       await event.map(
//         initialize: (e) async {
//           final s3Object = await s3ObjectRepository.getS3Object();
//           emit(state.copyWith(s3Object: s3Object));
//         },
//       );
//     });
//   }
// }

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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/repositories/user_storage_limit_repository.dart';
import 'package:flutter_common/state/user_storage_limit/user_storage_limit_event.dart';
import 'package:flutter_common/state/user_storage_limit/user_storage_limit_state.dart';

class UserStorageLimitBloc
    extends Bloc<UserStorageLimitEvent, UserStorageLimitState> {
  final UserStorageLimitRepository userStorageLimitRepository;

  UserStorageLimitBloc({required this.userStorageLimitRepository})
      : super(UserStorageLimitState.initialize()) {
    on<UserStorageLimitEvent>(
      (event, emit) async {
        await event.map(
          s3Initialize: (e) async {
            final s3 = await userStorageLimitRepository.initializeByS3();
            emit(state.copyWith(s3: s3, s3IsLoading: false));
          },
          s3ClearError: (e) async {
            emit(state.copyWith(s3IsLoading: false, s3Error: null));
          },
        );
      },
    );
  }
}

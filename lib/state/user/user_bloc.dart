import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/user_repository.dart';
import 'package:flutter_common/state/user/user_event.dart';
import 'package:flutter_common/state/user/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository userRepository;
  String? fcmToken;

  UserBloc({
    required this.userRepository,
    this.fcmToken,
  }) : super(UserState.initialize()) {
    on<UserEvent>((event, emit) async {
      try {
        await event.map(initialize: (e) async {
          await _handleEvent(emit, () async {
            final user = await userRepository.getUserInfo(fcmToken: fcmToken);
            final userList = await userRepository.getAppUserList();
            emit(state.copyWith(user: user, userList: userList));
          });
        }, addAppUser: (e) async {
          await _handleEvent(emit, () async {
            await userRepository.addAppUser(fcmToken: fcmToken);
            final userList = await userRepository.getAppUserList();
            emit(state.copyWith(userList: userList));
          });
        }, changeAppUser: (e) async {
          await _handleEvent(emit, () async {
            await userRepository.changeAppUser(e.user);
            add(const UserEvent.initialize());
          });
        }, deleteUserData: (e) async {
          await _handleEvent(emit, () async {
            await userRepository.deleteUserData(e.user);
            emit(state.copyWith(user: null));
            add(const UserEvent.initialize());
          });
        }, userBlock: (e) async {
          await _handleEvent(emit, () async {
            if (state.user == null) {
              throw const AppException.unknown('User not found');
            }
            await userRepository.userBlock(
                state.user!, e.blockedUserId, e.reason);
          });
        }, updateUserName: (e) async {
          await _handleEvent(emit, () async {
            if (state.user == null) {
              throw const AppException.unknown('User not found');
            }
            final user =
                await userRepository.updateUserName(state.user!.id, e.userName);
            emit(state.copyWith(user: user));
          });
        }, clearError: (e) async {
          emit(state.copyWith(error: null, isLoading: false));
        });
      } catch (e) {
        await _handleEvent(emit, () async {},
            defaultError: AppException.unknown(e.toString()));
      }
    });
  }

  Future<void> _handleEvent<T>(
    Emitter<UserState> emit,
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

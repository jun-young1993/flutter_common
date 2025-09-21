import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/repositories/user_group_repository.dart';
import 'package:flutter_common/state/user_group/user_group_event.dart';
import 'package:flutter_common/state/user_group/user_group_state.dart';

class UserGroupBloc extends Bloc<UserGroupEvent, UserGroupState> {
  final UserGroupRepository userGroupRepository;

  UserGroupBloc({required this.userGroupRepository})
      : super(UserGroupState.initialize()) {
    on<UserGroupEvent>(
      (event, emit) async {
        try {
          await event.map(
            initialize: (e) async {
              emit(const UserGroupState());
            },
            create: (e) async {
              final userGroup = await userGroupRepository.createUserGroup();
              emit(state.copyWith(userGroup: userGroup));
            },
            clearError: (e) async {
              emit(state.copyWith(error: null));
            },
            findAll: (e) async {
              final userGroups = await userGroupRepository.getUserGroups();
              emit(state.copyWith(userGroup: userGroups));
            },
            addUser: (e) async {
              final userGroup = await userGroupRepository.addUser();
              emit(state.copyWith(userGroup: userGroup));
            },
            removeUser: (e) async {
              final userGroup = await userGroupRepository.removeUser();
              emit(state.copyWith(userGroup: userGroup));
            },
          );
        } catch (e) {
          emit(state.copyWith(error: AppException.unknown(e.toString())));
        }
      },
    );
  }
}

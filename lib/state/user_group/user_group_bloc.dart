import 'package:flutter/material.dart';
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
              final userGroup = await userGroupRepository.createUserGroup(
                  e.name, e.description);
              emit(state.copyWith(userGroup: userGroup));
            },
            clearError: (e) async {
              emit(state.copyWith(error: null));
            },
            findAll: (e) async {
              try {
                emit(state.copyWith(isLoading: true));
                final userGroups = await userGroupRepository.getUserGroups();
                emit(state.copyWith(
                    userGroup: userGroups,
                    isLoading: false,
                    isNotFound: false));
              } on AppException catch (e) {
                if (e == const AppException.notFound()) {
                  debugPrint('🔥 [ERROR] User group not found');
                  emit(state.copyWith(
                      userGroup: null, isNotFound: true, isLoading: false));
                } else {
                  emit(state.copyWith(
                      error: AppException.unknown(e.toString())));
                }
              } catch (e) {
                emit(state.copyWith(error: AppException.unknown(e.toString())));
              }
            },
            addUserByNumber: (e) async {
              final userGroup =
                  await userGroupRepository.addUserByNumber(e.number);
              emit(state.copyWith(userGroup: userGroup));
            },
            removeUser: (e) async {
              final userGroup = await userGroupRepository.removeUser();
              emit(state.copyWith(userGroup: userGroup));
            },
            updateName: (e) async {
              if (state.userGroup == null) {
                throw const AppException.unknown('User group not found');
              }
              final userGroupId = state.userGroup?.id as String;
              final userGroup =
                  await userGroupRepository.updateName(userGroupId, e.name);
              emit(state.copyWith(userGroup: userGroup));
            },
            updateDescription: (e) async {
              if (state.userGroup == null) {
                throw const AppException.unknown('User group not found');
              }
              final userGroupId = state.userGroup?.id as String;
              final userGroup = await userGroupRepository.updateDescription(
                  userGroupId, e.description);
              await userGroupRepository.updateDescription(
                  userGroupId, e.description);
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

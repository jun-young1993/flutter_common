import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/repositories/app_repository.dart';
import 'package:flutter_common/repositories/notice_group_repository.dart';
import 'package:flutter_common/repositories/notice_reply_repository.dart';
import 'package:flutter_common/repositories/notice_repository.dart';
import 'package:flutter_common/repositories/verification_repository.dart';
import 'package:flutter_common/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonRepositoryProvider extends StatelessWidget {
  final Widget child;
  final List<RepositoryProvider>? providers;
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;
  final AppKeys appKey;
  const CommonRepositoryProvider({
    super.key,
    required this.child,
    this.providers,
    required this.dioClient,
    required this.sharedPreferences,
    required this.appKey,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppRepository>(
          create: (context) => AppDefaultRepository(),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => UserDefaultRepository(
            dioClient: dioClient,
            sharedPreferences: sharedPreferences,
            appKey: appKey,
          ),
        ),
        RepositoryProvider<VerificationRepository>(
          create: (context) => VerificationDefaultRepository(
            dioClient: dioClient,
            appKey: appKey,
          ),
        ),
        RepositoryProvider<NoticeGroupRepository>(
          create: (context) => NoticeGroupDefaultRepository(),
        ),
        RepositoryProvider<NoticeRepository>(
          create: (context) => NoticeDefaultRepository(),
        ),
        RepositoryProvider<NoticeReplyRepository>(
          create: (context) => NoticeReplyDefaultRepository(),
        ),
        ...(providers ?? []),
      ],
      child: child,
    );
  }
}

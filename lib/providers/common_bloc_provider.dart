import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/repositories/mcp_config_repository.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_listener.dart';
import 'package:flutter_common/state/notice/notice_bloc.dart';
import 'package:flutter_common/state/notice_group/notice_group_bloc.dart';
import 'package:flutter_common/state/notice_reply/notice_reply_bloc.dart';
import 'package:flutter_common/state/user/user_bloc.dart';
import 'package:flutter_common/state/verification/verification_bloc.dart';
import 'package:flutter_common/state/verification/verification_listener.dart';
import 'package:flutter_common/state/verification/verification_state.dart';
import 'package:flutter_common/widgets/toast/toast.dart';

class CommonBlocProvider extends StatelessWidget {
  const CommonBlocProvider({
    super.key,
    required this.child,
    this.providers,
  });
  final Widget child;
  final List<BlocProvider>? providers;

  @override
  Widget build(BuildContext _) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppBloc()),
          BlocProvider(
            create: (context) => AppConfigBloc(
              appRepository: context.read<AppRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => UserBloc(
              userRepository: context.read<UserRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => VerificationBloc(
              verificationRepository: context.read<VerificationRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => NoticeGroupBloc(
              noticeGroupRepository: context.read<NoticeGroupRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => NoticeBloc(
              noticeRepository: context.read<NoticeRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => NoticeReplyBloc(
              noticeReplyRepository: context.read<NoticeReplyRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) =>
                McpChatBloc(context.read<LlmClientRepository>()),
          ),
          BlocProvider(
            create: (context) => McpConfigBloc(
              mcpConfigRepository: context.read<McpConfigRepository>(),
              llmClientRepository: context.read<LlmClientRepository>(),
            ),
          ),
          ...(providers ?? []),
        ],
        child: MultiBlocListener(
            listeners: [VerificationListener()],
            child: Builder(builder: (context) {
              return EasyLocalization(
                startLocale:
                    context.read<AppConfigBloc>().state.language.toLocale(),
                supportedLocales: const [Locale('en'), Locale('ko')],
                path: 'packages/flutter_common/assets/translations',
                fallbackLocale: const Locale('en'),
                child: child,
              );
            })));
  }
}

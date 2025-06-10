import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/repositories/app_repository.dart';
import 'package:flutter_common/repositories/user_repository.dart';
import 'package:flutter_common/state/user/user_bloc.dart';

class CommonBlocProvider extends StatelessWidget {
  const CommonBlocProvider({super.key, required this.child, this.providers});
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
        ...(providers ?? []),
      ],
      child: child,
    );
  }
}

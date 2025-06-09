import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_common/repositories/app_repository.dart';

class CommonBlocProvider extends StatelessWidget {
  const CommonBlocProvider({super.key, required this.child, this.providers});
  final Widget child;
  final List<BlocProvider>? providers;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppConfigBloc(
            appRepository: context.read<AppRepository>(),
          ),
        ),
        BlocProvider(create: (context) => AppBloc()),
        ...(providers ?? []),
      ],
      child: child,
    );
  }
}

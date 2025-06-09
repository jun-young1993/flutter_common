import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/repositories/app_repository.dart';

class CommonRepositoryProvider extends StatelessWidget {
  final Widget child;
  final List<RepositoryProvider>? providers;
  const CommonRepositoryProvider({
    super.key,
    required this.child,
    this.providers,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppRepository>(
          create: (context) => AppDefaultRepository(),
        ),
        ...(providers ?? []),
      ],
      child: child,
    );
  }
}

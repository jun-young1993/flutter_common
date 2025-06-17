import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/providers/common_bloc_provider.dart';
import 'package:flutter_common/providers/common_repository_provider.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonProvider extends StatefulWidget {
  const CommonProvider({
    super.key,
    required this.child,
    required this.dioClient,
    required this.appKey,
    required this.sharedPreferences,
    this.repositoryProviders,
    this.blocProviders,
  });

  final Widget child;
  final DioClient dioClient;
  final AppKeys appKey;
  final List<RepositoryProvider>? repositoryProviders;
  final List<BlocProvider>? blocProviders;
  final SharedPreferences sharedPreferences;

  @override
  State<CommonProvider> createState() => _CommonProviderState();
}

class _CommonProviderState extends State<CommonProvider> {
  @override
  Widget build(BuildContext context) {
    final repositoryProviders = widget.repositoryProviders;
    final blocProviders = widget.blocProviders;
    final dioClient = widget.dioClient;
    final appKey = widget.appKey;
    final child = widget.child;
    final sharedPreferences = widget.sharedPreferences;

    return CommonRepositoryProvider(
      providers: repositoryProviders,
      dioClient: dioClient,
      sharedPreferences: sharedPreferences,
      appKey: appKey,
      child: CommonBlocProvider(
        providers: blocProviders,
        child: child,
      ),
    );
  }
}

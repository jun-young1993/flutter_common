import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/providers/common_bloc_provider.dart';
import 'package:flutter_common/providers/common_repository_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonProvider extends StatelessWidget {
  const CommonProvider({
    super.key,
    required this.child,
    required this.dioClient,
    required this.sharedPreferences,
    required this.appKey,
    this.repositoryProviders,
    this.blocProviders,
  });
  final Widget child;
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;
  final AppKeys appKey;
  final List<RepositoryProvider>? repositoryProviders;
  final List<BlocProvider>? blocProviders;

  @override
  Widget build(BuildContext context) {
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

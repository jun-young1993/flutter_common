import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/providers/common_bloc_provider.dart';
import 'package:flutter_common/providers/common_repository_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonProvider extends StatefulWidget {
  const CommonProvider({
    super.key,
    required this.child,
    required this.dioClient,
    required this.appKey,
    this.repositoryProviders,
    this.blocProviders,
  });

  final Widget child;
  final DioClient dioClient;
  final AppKeys appKey;
  final List<RepositoryProvider>? repositoryProviders;
  final List<BlocProvider>? blocProviders;

  @override
  State<CommonProvider> createState() => _CommonProviderState();
}

class _CommonProviderState extends State<CommonProvider> {
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        sharedPreferences = prefs;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final repositoryProviders = widget.repositoryProviders;
    final blocProviders = widget.blocProviders;
    final dioClient = widget.dioClient;
    final appKey = widget.appKey;
    final child = widget.child;

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

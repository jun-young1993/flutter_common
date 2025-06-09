import 'package:flutter/material.dart';
import 'package:flutter_common/providers/common_bloc_provider.dart';
import 'package:flutter_common/providers/common_repository_provider.dart';

class CommonProvider extends StatelessWidget {
  const CommonProvider({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CommonRepositoryProvider(child: CommonBlocProvider(child: child));
  }
}

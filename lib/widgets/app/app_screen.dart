import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/app/app_bloc.dart';
import 'package:flutter_common/state/app/app_event.dart';
import 'package:flutter_common/state/app/app_selector.dart';
import 'package:flutter_common/widgets/ad/ad_manager.dart';
import 'package:flutter_common/widgets/error_view.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppScreen extends StatefulWidget {
  final List<Widget> screens;
  final List<BottomNavigationBarItem> items;
  final AppBloc bloc;
  const AppScreen({
    super.key,
    required this.screens,
    required this.items,
    required this.bloc,
  });

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _currentIndex = 0;
  late final List<Widget> _screens;
  AppBloc get appBloc => widget.bloc;

  @override
  void initState() {
    super.initState();
    _screens = widget.screens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 34.0),
          // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          child: AppExceptionSelector(
            (exception) {
              if (exception == null) {
                return IndexedStack(index: _currentIndex, children: _screens);
              }
              return ErrorView(
                  error: exception,
                  onRetry: () {
                    appBloc.add(const AppEvent.clearError());
                  });
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: widget.items,
        ));
  }
}

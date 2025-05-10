import 'package:flutter/material.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  /// 외부에서 route 생성 함수를 주입받을 수 있도록 변경
  static Route<dynamic> Function(RouteSettings settings)? _userOnGenerateRoute;

  static void setOnGenerateRoute(
      Route<dynamic> Function(RouteSettings settings) onGenerateRoute) {
    _userOnGenerateRoute = onGenerateRoute;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    currentRoute = settings.name;
    if (_userOnGenerateRoute != null) {
      return _userOnGenerateRoute!(settings);
    }
    // 기본 fallback: 빈 페이지
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text('No route defined')),
      ),
    );
  }

  static Future<T?>? push<T>(String routeName, {Object? arguments}) =>
      state?.pushNamed<T>(routeName, arguments: arguments);

  static Future<T?>? replaceWith<T>(String routeName, {Object? arguments}) =>
      state?.pushReplacementNamed<T, T>(routeName, arguments: arguments);

  static void pop<T extends Object?>([T? result]) => state?.pop<T>(result);

  static NavigatorState? get state => navigatorKey.currentState;

  static String? currentRoute;
}

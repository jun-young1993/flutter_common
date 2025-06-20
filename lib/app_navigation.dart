import 'package:flutter/material.dart';
import 'package:flutter_common/widgets/fade_route.dart';

/// A contract for path provider classes.
///
/// The consuming app should implement this class to provide a mapping
/// from a route enum to a string path.
/// `R` is expected to be an enum of the app's routes.
abstract class IPath<R> {
  String of(R route);
}

/// A generic navigator class managed by a singleton pattern.
///
/// It must be initialized once in the app's lifecycle (e.g., in `main.dart`)
/// before being used.
class AppNavigator<R, P extends IPath<R>> {
  // --- Singleton Pattern ---
  static AppNavigator? _instance;

  /// The singleton instance of the AppNavigator.
  ///
  /// An exception is thrown if `init` has not been called.
  static AppNavigator get I {
    if (_instance == null) {
      throw Exception(
        'AppNavigator has not been initialized. '
        'Please call AppNavigator.init() in your main.dart file before using it.',
      );
    }
    return _instance!;
  }

  /// Initializes the AppNavigator singleton with app-specific configurations.
  static void init<R, P extends IPath<R>>({
    required FadeRoute Function(RouteSettings settings) onGenerateRoute,
    required P pathProvider,
  }) {
    _instance = AppNavigator._(
      navigatorKey: GlobalKey<NavigatorState>(),
      onGenerateRoute: onGenerateRoute,
      pathProvider: pathProvider,
    );
  }

  // --- Private Constructor ---
  AppNavigator._({
    required this.navigatorKey,
    required this.onGenerateRoute,
    required this.pathProvider,
  });

  // --- Properties ---
  final GlobalKey<NavigatorState> navigatorKey;
  final FadeRoute Function(RouteSettings) onGenerateRoute;
  final P pathProvider;

  static String? currentRoute;

  /// A static wrapper for the instance's `onGenerateRoute` function.
  /// This can be passed directly to `MaterialApp`'s `onGenerateRoute` property.
  static FadeRoute handleGenerateRoute(RouteSettings settings) {
    currentRoute = settings.name;
    // Delegates the call to the user-provided onGenerateRoute function.
    return I.onGenerateRoute(settings);
  }

  /// The state from the navigator key.
  NavigatorState? get state => navigatorKey.currentState;

  // --- Navigation Methods ---

  /// Pushes a new named route onto the navigator stack.
  Future? push<T>(R route, [T? arguments]) {
    return state?.pushNamed(
      pathProvider.of(route),
      arguments: arguments,
    );
  }

  /// Replaces the current route by pushing the new named route and disposing the
  /// previous route.
  Future? replaceWith<T>(R route, [T? arguments]) {
    return state?.pushReplacementNamed(
      pathProvider.of(route),
      arguments: arguments,
    );
  }

  /// Pops the top-most route off the navigator.
  void pop<T extends Object?>([T? result]) {
    state?.pop(result);
  }
}

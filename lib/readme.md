# AppNavigation

1. 사용자 정의 라우트 설정정

```dart
  // lib/routes.dart
    import 'package:flutter_common/app_navigation.dart';

    enum AppRoutes { main, setting }

    class AppPaths implements IPath<AppRoutes> {
      static const _paths = {
        AppRoutes.main: '/',
        AppRoutes.setting: '/setting',
      };

      @override
      String of(AppRoutes route) => _paths[route]!;
    }
```

2. 네이게이터 초기화( main.dart)

```dart
    // main.dart
    void main() {
      AppNavigator.init<AppRoutes, AppPaths>(
        pathProvider: AppPaths(),
        onGenerateRoute: (settings) {
          // ... 라우트 생성 로직
        },
      );
      runApp(MyApp());
    }

    return MaterialApp(
      title: 'My Flutter App',
      // AppNavigator에서 직접 키와 라우트 핸들러를 가져와 사용합니다.
      navigatorKey: AppNavigator.I.navigatorKey,
      onGenerateRoute: AppNavigator.handleGenerateRoute,
      // ... 기타 설정
    );
```


3. 라우팅 호출

```dart
    AppNavigator.I.push(AppRoutes.setting);
```
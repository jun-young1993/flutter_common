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

```dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  // main 함수에서 비동기 작업을 수행하기 위해 필요합니다.
  WidgetsFlutterBinding.ensureInitialized();
  // EasyLocalization 초기화를 기다립니다.
  await EasyLocalization.ensureInitialized();

  runApp(
    // 앱의 최상위 위젯을 EasyLocalization으로 감싸줍니다.
    EasyLocalization(
      // 지원할 언어 목록
      supportedLocales: [Locale('en'), Locale('ko')],
      // 번역 파일이 있는 경로
      // 중요: 이 경로는 메인 앱 프로젝트 기준입니다.
      // 만약 flutter_common 패키지 내의 번역 파일을 사용하려면,
      // 'packages/flutter_common/assets/translations'와 같이 지정해야 할 수 있습니다.
      // 하지만 보통은 앱 자체의 assets에 두는 것이 일반적입니다.
      path: 'assets/translations',
      // 지원하는 언어가 없을 경우 기본으로 보여줄 언어
      fallbackLocale: Locale('en'),
      child: MyApp(), // 여러분의 메인 앱 위젯
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 아래 세 가지 속성을 설정해야 EasyLocalization이 올바르게 동작합니다.
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      home: YourHomePage(), // 여러분의 홈 페이지 위젯
    );
  }
}
```

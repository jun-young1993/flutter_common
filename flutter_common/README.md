<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Flutter Common

플러터 앱 개발을 위한 공통 컴포넌트 라이브러리입니다.

## 카테고리

### Widgets

- CommonButton: 재사용 가능한 기본 버튼
- CommonDialog: 공통 다이얼로그
- EmptyView: 빈 상태 표시 위젯

### Utils

- DateFormatter: 날짜 포맷팅 유틸리티
- Validator: 입력값 검증 유틸리티

### Themes

- AppTheme: 앱 테마 설정 (라이트/다크 모드)

### Extensions

- String Extensions: 문자열 관련 확장 메서드
- List Extensions: 리스트 관련 확장 메서드

### Mixins

- DebouncerMixin: 디바운스 기능
- FormValidationMixin: 폼 검증 기능

## 사용 방법

```dart
import 'package:flutter_common/flutter_common.dart';

// 위젯 사용
CommonButton(
  text: '확인',
  onPressed: () {},
);

// 확장 메서드 사용
'hello'.capitalize(); // 'Hello'

// 유틸리티 사용
DateFormatter.formatDateTime(DateTime.now());
```

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

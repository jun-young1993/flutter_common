# 버전 관리

```shell
git add .
```

```shell
git commit -m "v1.0.0"
```

```shell
git tag v1.0.0
```

```shell
git push origin v1.0.0
```

## yaml

```yaml
dependencies:
  flutter_common:
    git:
      url: git@github.com:jun-young1993/flutter_common.git
      ref: v1.0.0
```

# FadeRoute

페이지 전환 시 Fade 애니메이션을 적용하는 Flutter Route입니다.

## 사용법

```dart
Navigator.of(context).push(FadeRoute(page: NextPage()));
```

## 예제

example/main.dart 참고

# 실행 권한 부여

chmod +x version.sh

# 사용

./version.sh 1.0.0

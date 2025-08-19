# my_home_parking

# 명령구문

#### freezed

> watch freezed실행

```shell
flutter pub run build_runner watch -d
```

# 한 번만 실행
flutter packages pub run build_runner build

# 또는 지속적으로 감시하면서 실행
flutter packages pub run build_runner watch

> runner 실행

```shell
dart run build_runner build --delete-conflicting-outputs
```

#### 안드로이드 빌드

> apk build

```shell
flutter build apk --release
```

> aab build

```shell
flutter build appbundle
```

> ios build

```shell
flutter build ios
```

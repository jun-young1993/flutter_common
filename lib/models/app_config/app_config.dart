import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String key,
    required String version,
    @Default("") String description,
    @Default(false) bool isUpdateAvailable,
    @Default("") String appleId,
    @Default("") String packageName,
    @Default(null) String? appStoreUrl,
    @Default(null) String? googlePlayUrl,
  }) = _AppConfig;

  const AppConfig._();
  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}

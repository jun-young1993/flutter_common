// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      key: json['key'] as String,
      version: json['version'] as String,
      description: json['description'] as String? ?? "",
      isUpdateAvailable: json['isUpdateAvailable'] as bool? ?? false,
      appleId: json['appleId'] as String? ?? "",
      packageName: json['packageName'] as String? ?? "",
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'version': instance.version,
      'description': instance.description,
      'isUpdateAvailable': instance.isUpdateAvailable,
      'appleId': instance.appleId,
      'packageName': instance.packageName,
    };

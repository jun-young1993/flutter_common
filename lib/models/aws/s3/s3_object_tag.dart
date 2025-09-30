import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_tag.freezed.dart';
part 's3_object_tag.g.dart';

@freezed
class S3ObjectTag with _$S3ObjectTag {
  const factory S3ObjectTag({
    required String id,
    required String name,
    @Default(null) String? color,
    required String type,
  }) = _S3ObjectTag;

  const S3ObjectTag._();

  factory S3ObjectTag.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectTagFromJson(json);
}

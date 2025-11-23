import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_metadata.freezed.dart';
part 's3_object_metadata.g.dart';

@freezed
class S3ObjectMetadata with _$S3ObjectMetadata {
  const factory S3ObjectMetadata({
    required String id,
    @Default(null) String? caption,
    @Default(null) String? captionKo,
  }) = _S3ObjectMetadata;

  const S3ObjectMetadata._();

  factory S3ObjectMetadata.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectMetadataFromJson(json);
}

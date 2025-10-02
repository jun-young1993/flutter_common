import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_surround.freezed.dart';
part 's3_object_surround.g.dart';

@freezed
class S3ObjectSurround with _$S3ObjectSurround {
  const factory S3ObjectSurround({
    @Default([]) List<S3Object>? previous,
    required S3Object current,
    @Default([]) List<S3Object>? next,
  }) = _S3ObjectSurround;

  const S3ObjectSurround._();

  bool get hasPrevious => previous != null && previous!.isNotEmpty;
  bool get hasNext => next != null && next!.isNotEmpty;

  factory S3ObjectSurround.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectSurroundFromJson(json);
}

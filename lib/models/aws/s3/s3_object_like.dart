import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_like.freezed.dart';
part 's3_object_like.g.dart';

@freezed
class S3ObjectLike with _$S3ObjectLike {
  const factory S3ObjectLike({
    required String id,
    required String userId,
    required String s3ObjectId,
  }) = _S3ObjectLike;

  const S3ObjectLike._();
  factory S3ObjectLike.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectLikeFromJson(json);
}

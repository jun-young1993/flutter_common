import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_share.freezed.dart';
part 's3_object_share.g.dart';

@freezed
class S3ObjectShare with _$S3ObjectShare {
  const factory S3ObjectShare(
      {required String id,
      @Default(null) String? originalName,
      @Default(null) DateTime? expiredAt,
      @Default(null) String? shareCode,
      @Default(null) String? title,
      @Default(null) String? description,
      required String getShareUrl}) = _S3ObjectShare;

  const S3ObjectShare._();

  factory S3ObjectShare.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectShareFromJson(json);
}

import 'package:flutter_common/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group.freezed.dart';
part 'user_group.g.dart';

@freezed
class UserGroup with _$UserGroup {
  const factory UserGroup({
    required String id,
    @Default(null) String? name,
    @Default(null) String? description,
    required bool isActive,
    required bool isSystem,
    required String createdAt,
    required String updatedAt,
    @Default([]) List<User>? users,
    @Default(null) String? number,
    required bool isJoinable,
  }) = _UserGroup;

  const UserGroup._();
  factory UserGroup.fromJson(Map<String, dynamic> json) =>
      _$UserGroupFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_model.freezed.dart';
part 'user_list_model.g.dart';

UserListModel userListFromJson(String str) =>
    UserListModel.fromJson(json.decode(str));

@freezed
abstract class UserListModel with _$UserListModel {
  const UserListModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UserListModel({
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "total_pages") int? totalPages,
    @JsonKey(name: "data") List<UserModel>? data,
  }) = _UserListModel;

  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "avatar") String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

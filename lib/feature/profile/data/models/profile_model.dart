import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final bool status;
  final String message;
  final ProfileData? data;

  ProfileModel({required this.status, required this.message, this.data});

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@JsonSerializable()
class ProfileData {
  final int id;
  final String name;
  final String mobile;
  final String? email;
  @JsonKey(name: 'profile_photo_path')
  final String? profilePhotoPath;
  @JsonKey(name: 'role_id')
  final int roleId;
  @JsonKey(name: 'profile_photo_url')
  final String? profilePhotoUrl;

  ProfileData({
    required this.id,
    required this.name,
    required this.mobile,
    this.email,
    this.profilePhotoPath,
    required this.roleId,
    this.profilePhotoUrl,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

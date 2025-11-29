import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final bool status;
  final String message;
  final UserData? data;
  LoginResponse({required this.status, required this.message, this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final int id;
  final String name;
  final String mobile;
  final String? email;
  @JsonKey(name: 'role_id')
  final int roleId;
  final String? address;
  @JsonKey(name: 'profile_photo_path')
  final String profilePhotoPath;
  final String token;
  @JsonKey(name: 'profile_photo_url')
  final String profilePhotoUrl;

  UserData({
    required this.id,
    required this.name,
    required this.mobile,
    this.email,
    required this.roleId,
    this.address,
    required this.profilePhotoPath,
    required this.token,
    required this.profilePhotoUrl,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

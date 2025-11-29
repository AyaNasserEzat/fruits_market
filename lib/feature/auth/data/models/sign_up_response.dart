import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final bool status;

  @JsonKey(name: 'error_message')
  final String? errorMessage;

  @JsonKey(name: 'error_message_en')
  final String? errorMessageEn;

  final SignupData? data;  

  SignupResponse({
    required this.status,
    this.errorMessage,
    this.errorMessageEn,
    this.data,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}


@JsonSerializable()
class SignupData {
  final String? mobile;
  final String? name;

  @JsonKey(name: 'profile_photo_path')
  final String? profilePhotoPath;

  final String? token;

  SignupData({
    this.mobile,
    this.name,
    this.profilePhotoPath,
    this.token,
  });

  factory SignupData.fromJson(Map<String, dynamic> json) =>
      _$SignupDataFromJson(json);
}

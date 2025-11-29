// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      status: json['status'] as bool,
      errorMessage: json['error_message'] as String?,
      errorMessageEn: json['error_message_en'] as String?,
      data:
          json['data'] == null
              ? null
              : SignupData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error_message': instance.errorMessage,
      'error_message_en': instance.errorMessageEn,
      'data': instance.data,
    };

SignupData _$SignupDataFromJson(Map<String, dynamic> json) => SignupData(
  mobile: json['mobile'] as String?,
  name: json['name'] as String?,
  profilePhotoPath: json['profile_photo_path'] as String?,
  token: json['token'] as String?,
);

Map<String, dynamic> _$SignupDataToJson(SignupData instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'name': instance.name,
      'profile_photo_path': instance.profilePhotoPath,
      'token': instance.token,
    };

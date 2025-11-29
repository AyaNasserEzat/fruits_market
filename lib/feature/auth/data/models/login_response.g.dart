// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as bool,
      message: json['message'] as String,
      data:
          json['data'] == null
              ? null
              : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  mobile: json['mobile'] as String,
  email: json['email'] as String?,
  roleId: (json['role_id'] as num).toInt(),
  address: json['address'] as String?,
  profilePhotoPath: json['profile_photo_path'] as String,
  token: json['token'] as String,
  profilePhotoUrl: json['profile_photo_url'] as String,
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'mobile': instance.mobile,
  'email': instance.email,
  'role_id': instance.roleId,
  'address': instance.address,
  'profile_photo_path': instance.profilePhotoPath,
  'token': instance.token,
  'profile_photo_url': instance.profilePhotoUrl,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
  status: json['status'] as bool,
  message: json['message'] as String,
  data:
      json['data'] == null
          ? null
          : ProfileData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => ProfileData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  mobile: json['mobile'] as String,
  email: json['email'] as String?,
  profilePhotoPath: json['profile_photo_path'] as String?,
  roleId: (json['role_id'] as num).toInt(),
  profilePhotoUrl: json['profile_photo_url'] as String?,
);

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'email': instance.email,
      'profile_photo_path': instance.profilePhotoPath,
      'role_id': instance.roleId,
      'profile_photo_url': instance.profilePhotoUrl,
    };

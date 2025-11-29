import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  @JsonKey(name: 'phone_email')
  final String phone;
  final String password;

  LoginRequestBody({required this.phone, required this.password});
  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}

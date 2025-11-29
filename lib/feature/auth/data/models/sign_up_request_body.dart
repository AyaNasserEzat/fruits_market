import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String mobile;
  final String password;
  @JsonKey(name: 'c_password')
  final String passwordConfirmation;

  SignupRequestBody({
    required this.name,
    required this.mobile,
    required this.password,
    required this.passwordConfirmation,
  });
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}

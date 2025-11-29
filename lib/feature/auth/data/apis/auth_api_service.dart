import 'package:dio/dio.dart';
import 'package:fruits_market/core/networking/api_constant.dart';
import 'package:fruits_market/feature/auth/data/models/login_request_body.dart';
import 'package:fruits_market/feature/auth/data/models/login_response.dart';
import 'package:fruits_market/feature/auth/data/models/sign_up_request_body.dart';
import 'package:fruits_market/feature/auth/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String? baseUrl}) = _AuthApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstants.signup)
  Future<SignupResponse> signUp(@Queries() SignupRequestBody signupRequestBody);
}

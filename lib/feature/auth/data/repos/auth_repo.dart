import 'package:fruits_market/core/networking/api_error_handler.dart';
import 'package:fruits_market/core/networking/api_error_model.dart';
import 'package:fruits_market/core/networking/api_result.dart';
import 'package:fruits_market/feature/auth/data/apis/auth_api_service.dart';
import 'package:fruits_market/feature/auth/data/models/login_request_body.dart';
import 'package:fruits_market/feature/auth/data/models/login_response.dart';
import 'package:fruits_market/feature/auth/data/models/sign_up_request_body.dart';
import 'package:fruits_market/feature/auth/data/models/sign_up_response.dart';

class AuthRepo {
  final AuthApiService _authApiService;
  AuthRepo(this._authApiService);
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _authApiService.login(loginRequestBody);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(
          ApiErrorModel(
            message: response.message,
            status: response.status,
            data: response.data,
          ),
        );
      }
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }

  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _authApiService.signUp(signupRequestBody);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(
          ApiErrorModel(
            message: response.errorMessage,
            status: response.status,
            data: response.data,
          ),
        );
      }
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }
}

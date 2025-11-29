import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_market/core/networking/api_error_model.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.signupLoading() = SignupLoading;
  const factory AuthState.signupSucess(T data) = SignupSucess<T>;
  const factory AuthState.signupError(ApiErrorModel apiErroeModel) =
      SignupError;

  //login
  const factory AuthState.loginLoading() = LoginLoading;
  const factory AuthState.loginSuccess(T data) = LoginSuccess<T>;
  const factory AuthState.loginError(ApiErrorModel apiErrorModel) = LoginError;
}

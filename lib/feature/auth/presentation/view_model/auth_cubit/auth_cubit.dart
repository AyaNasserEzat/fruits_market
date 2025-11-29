import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/helpers/constant.dart';
import 'package:fruits_market/core/helpers/shared_pref_helper.dart';
import 'package:fruits_market/core/networking/api_result.dart';
import 'package:fruits_market/feature/auth/data/models/login_request_body.dart';
import 'package:fruits_market/feature/auth/data/models/sign_up_request_body.dart';
import 'package:fruits_market/feature/auth/data/repos/auth_repo.dart';
import 'package:fruits_market/feature/auth/presentation/view_model/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthState.initial());
  final AuthRepo authRepo;

  //sign up
  TextEditingController? mobileController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? passwordConfirmationController =
      TextEditingController();
  TextEditingController? nameController = TextEditingController();

  final signupFormKey = GlobalKey<FormState>();
  void emitSignupState() async {
    emit(const AuthState.signupLoading());
    final response = await authRepo.signup(
      SignupRequestBody(
        name: nameController!.text,
        mobile: mobileController!.text,
        password: passwordController!.text,
        passwordConfirmation: passwordController!.text,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(AuthState.signupSucess(signupResponse));
      },
      failure: (apiErroeModel) {
        emit(AuthState.signupError(apiErroeModel));
      },
    );
  }

  TextEditingController? loginphoneController = TextEditingController();
  TextEditingController? loginpasswordController = TextEditingController();
  final loginformKey = GlobalKey<FormState>();
  void emitLoginState() async {
    emit(const AuthState.loginLoading());
    final response = await authRepo.login(
      LoginRequestBody(
        phone: loginphoneController!.text,
        password: loginpasswordController!.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        // await SharedPrefHelper.setSecuredString(
        //   SharedPrefKeys.userToken,
        //   loginResponse.data!.token,
        // );
        emit(AuthState.loginSuccess(loginResponse));
      },
      failure: (apiErroeModel) {
        emit(AuthState.loginError(apiErroeModel));
      },
    );
  }
}

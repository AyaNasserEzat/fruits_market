import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/helpers/extension.dart';
import 'package:fruits_market/core/routing/routes.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/widgets/error_dialog.dart';
import 'package:fruits_market/feature/auth/presentation/view_model/auth_cubit/auth_cubit.dart';
import 'package:fruits_market/feature/auth/presentation/view_model/auth_cubit/auth_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginSuccess ||
              current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) =>  Center(
                    child: CircularProgressIndicator(color: AppColors.primaryColor),
                  ),
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.bottomNavigationBar);
          },
          loginError: (apiErrorModel) {
            showErrorDialog(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/helpers/extension.dart';
import 'package:fruits_market/core/routing/routes.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/widgets/error_dialog.dart';
import 'package:fruits_market/feature/auth/presentation/view_model/auth_cubit/auth_cubit.dart';
import 'package:fruits_market/feature/auth/presentation/view_model/auth_cubit/auth_state.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen:
          (previous, current) =>
              current is SignupLoading ||
              current is SignupSucess ||
              current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) => Center(
                    child: CircularProgressIndicator(color: AppColors.blue),
                  ),
            );
          },
          signupSucess: (signupResponse) {
            context.pop();
           context.pushNamed(Routes.bottomNavigationBar);
          },
          signupError: (apiErrorModel) {
            showErrorDialog(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_arrow_back_icon.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomArrowBackIcon()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(AppStrings.appName, style: AppTextStyle.poppinsBoldGreen),
              SizedBox(height: 21.h),
              Text("Sign Up Up To Wikala", style: AppTextStyle.segoeUIBold),
              SizedBox(height: 28.h),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_rich.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/dont_have_acount_widget.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/forget_password_text_bytton.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/phone_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextRich(text: 'Phone Number '),
        SizedBox(height: 8.h),
        PhoneTextFormField(),
        SizedBox(height: 21.h),
        CustomTextRich(text: 'Password '),
        SizedBox(height: 8.h),
        CustomTextFormField(hintText: 'Password'),
        SizedBox(height: 17.h),
        ForgetPasswordTextButton(),
        SizedBox(height: 21.h),
        CustomButton(onpressed: () {}, text: 'Login'),
        SizedBox(height: 35.h),
        DontHaveAcountWidget(),
      ],
    );
  }
}

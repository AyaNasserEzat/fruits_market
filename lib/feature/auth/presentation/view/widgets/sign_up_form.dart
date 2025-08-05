import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/login_view.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/auth_navigation_text.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_rich.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/phone_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextRich(text: 'Full name '),
        SizedBox(height: 13.h),
        CustomTextFormField(hintText: 'First and Last Name'),
        SizedBox(height: 32.h),
        CustomTextRich(text: 'Phone Number with Watsapp'),
        SizedBox(height: 13.h),
        PhoneTextFormField(hintText: 'Mobile Number'),
        SizedBox(height: 32.h),
        CustomTextRich(text: 'Password '),
        SizedBox(height: 13.h),
        CustomTextFormField(hintText: 'Password'),
        SizedBox(height: 41.h),
        CustomButton(onpressed: () {}, text: 'Sign Up'),
        SizedBox(height: 39.h),
        AuthNavigationText(
          prefixText: 'Aleardy have an account? |',
          actionText: 'Login',
          onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => LoginView()),
                  );
                },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/auth/presentation/view/login_view.dart';
import 'package:fruits_market/feature/auth/presentation/view/sign_in_with_phone_view.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/auth_navigation_text.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/sign_in_option_widget.dart';

class SignInOptionView extends StatelessWidget {
  const SignInOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.close)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(AppStrings.appName, style: AppTextStyle.poppinsBoldGreen),
              SizedBox(height: 21.h),
              Text("Welcome To Our App", style: AppTextStyle.segoeUIBold),
              SizedBox(height: 28.h),
              SignInOptionWidget(
                iconPath: 'assets/images/phone_icon.png',
                text: 'Sign in with Phone Number',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignInWithPhoneView();
                  }));
                },
              ),
              SizedBox(height: 21.h),
              SignInOptionWidget(
                iconPath: 'assets/images/googl_icon.png',
                text: 'Sign in with Google',
              ),
              SizedBox(height: 21.h),
              SignInOptionWidget(
                color: AppColors.blueLight,
                iconPath: 'assets/images/facbook_icon.png',
                text: 'Sign in with Facebook',
              ),
              SizedBox(height: 90.h),
              AuthNavigationText(
                prefixText: 'Already member? ',
                actionText: 'Sign In',
                widget: LoginView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

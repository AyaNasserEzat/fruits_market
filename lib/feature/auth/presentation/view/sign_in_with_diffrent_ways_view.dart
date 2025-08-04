import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class SignInWithDiffrentWaysView extends StatelessWidget {
  const SignInWithDiffrentWaysView({super.key});

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
          
            ],
          ),
        ),
      ),
    );
  }
}
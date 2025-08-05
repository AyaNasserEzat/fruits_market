import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_arrow_back_icon.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/auth_navigation_text.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/pin_code_fields.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
              Text("Enter Received OTP", style: AppTextStyle.segoeUIBold),
              SizedBox(height: 28.h),
              PinCodeFields(),
              SizedBox(height: 52.h),
              CustomButton(onpressed: (){}, text: 'Confirm'),
              SizedBox(height: 48.h),
              Text('60'),
              SizedBox(height: 34.h),
              AuthNavigationText(prefixText: 'Not Received?', actionText: 'Send Again', onTap: (){})
             
            ],
          ),
        ),
      ),
    );
  }
}
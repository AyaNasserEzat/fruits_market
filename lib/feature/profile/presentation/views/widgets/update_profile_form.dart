import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_rich.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/phone_text_form_field.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextRich(text: AppStrings.name),
        SizedBox(height: 17.h),
    CustomTextFormField(hintText: AppStrings.name,controller: TextEditingController(),),
    SizedBox(height: 10.h),
    CustomTextRich(text: AppStrings.mobileNumberWithWhatspp),
    SizedBox(height: 14.h),
    PhoneTextFormField(hintText: 'Mobile Number',controller: TextEditingController(),),
    SizedBox(height: 17.h),
    CustomTextRich(text: AppStrings.password),
    SizedBox(height: 14.h),
    CustomTextFormField(hintText: AppStrings.password,controller: TextEditingController(),),
    SizedBox(height: 40.h),
    CustomButton(onpressed: (){}, text: 'Update')
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_form_field.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(AppStrings.name,style: AppTextStyle.arialRegular,),
        SizedBox(height: 16.h,),
        CustomTextFormField(),
        SizedBox(height: 18.h,),
        Text(AppStrings.mobileNumber,style: AppTextStyle.arialRegular,),
        SizedBox(height: 16.h,),
        CustomTextFormField(),
        SizedBox(height: 18.h,),
        Text(AppStrings.message,style: AppTextStyle.arialRegular,),
        SizedBox(height: 16.h,),
        CustomTextFormField(height:190 ,),
        SizedBox(height: 27.h,),
        CustomButton(onpressed: (){}, text: AppStrings.supmit),
      ],),
    );
  }
}
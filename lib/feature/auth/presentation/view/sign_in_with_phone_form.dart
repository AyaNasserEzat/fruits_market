
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/otp_view.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_rich.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/phone_text_form_field.dart';

class SignInWithPhoneForm extends StatelessWidget {
  const SignInWithPhoneForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextRich(text: 'Phone Number '),
         SizedBox(height: 8.h),
            PhoneTextFormField(hintText: 'Phone Number'),
              SizedBox(height: 48.h),
              CustomButton(onpressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => OtpView()),
                  );
                }, text: 'Submit')
      ],
    );
  }
}
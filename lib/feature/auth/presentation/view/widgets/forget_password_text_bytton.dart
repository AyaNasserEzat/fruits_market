import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: Text('Forget Password?', style: AppTextStyle.textUnderLinBlue),
      ),
    );
  }
}

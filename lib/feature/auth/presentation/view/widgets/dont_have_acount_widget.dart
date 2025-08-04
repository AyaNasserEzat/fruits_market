import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class DontHaveAcountWidget extends StatelessWidget {
  const DontHaveAcountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          text: 'Dont have an acount? |',
          style: AppTextStyle.arialRegular18,
          children: [
            TextSpan(text: 'Sign Up', style: AppTextStyle.textUnderLinBlue),
          ],
        ),
      ),
    );
  }
}

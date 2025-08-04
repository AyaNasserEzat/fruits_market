import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class AuthNavigationText extends StatelessWidget {
  const AuthNavigationText({
    super.key,
    required this.prefixText,
    required this.actionText,
    required this.widget,
    this.prefixTextcolor = AppColors.black,
  });
  final String prefixText;
  final Color? prefixTextcolor;
  final String actionText;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          text: prefixText,
          style:
              prefixTextcolor != AppColors.black
                  ? AppTextStyle.arialRegular18.copyWith(color: prefixTextcolor)
                  : AppTextStyle.arialRegular18,
          children: [
            TextSpan(
              text: actionText,
              style:
                  prefixTextcolor == AppColors.black
                      ? AppTextStyle.textUnderLinBlue
                      : AppTextStyle.arialRegular18.copyWith(
                        color: AppColors.blue,
                      ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => widget),
                      );
                    },
            ),
          ],
        ),
      ),
    );
  }
}

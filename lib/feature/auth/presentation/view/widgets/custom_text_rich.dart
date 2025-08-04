
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text,
        style: AppTextStyle.arialRegular,
        children: [
          TextSpan(
            text: '*',
            style: AppTextStyle.arialRegular.copyWith(
              color: AppColors.red,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,  this.hintText,this.height=50});
  final String? hintText;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height:height ,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.arialRegular.copyWith(color: AppColors.black),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

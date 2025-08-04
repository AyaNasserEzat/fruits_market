import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.hintText,
  });
final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black12,
          ),
        ],
      ),
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
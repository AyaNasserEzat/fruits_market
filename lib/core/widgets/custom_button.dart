import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onpressed,
    required this.text,
    this.color = AppColors.primaryColor,this.height=50,this.width=double.infinity,this.padding=const EdgeInsets.symmetric(horizontal: 16,vertical: 14),
  });
  final VoidCallback onpressed;
  final Color? color;
  final String text;
  final double width;
  final double height;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          
        ),
        child: Padding(
         padding: padding!,
        
          child: Center(child: Text(text, style: AppTextStyle.meduimStyle)),
        ),
      ),
    );
  }
}

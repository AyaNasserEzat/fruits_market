import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class PlusMinusQuntityWidget extends StatelessWidget {
  const PlusMinusQuntityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      height: 30.h,
      width: 120.w,
      child: Row(
        spacing: 10.w,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.remove, color: AppColors.greyDark),
          Text("1", style: AppTextStyle.titilliumWebRegular.copyWith(color: AppColors.greyDark)),
          Icon(Icons.add, color: AppColors.greyDark),
        ],
      ),
    );
  }
}

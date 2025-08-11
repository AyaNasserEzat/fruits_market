
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class UpToOfferContainer extends StatelessWidget {
  const UpToOfferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.redLight,
          ),
          height: 30.h,
          width: 120.w,
          child: Center(
            child: Text(
              'up to 10% off',
              style: AppTextStyle.titilliumWebSemiBold.copyWith(fontSize: 16.sp),
            ),
          ),
        ),
       
        
      ],
    );
  }
}

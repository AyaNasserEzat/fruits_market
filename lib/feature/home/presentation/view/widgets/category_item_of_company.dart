import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class CategoryItemOfCompany extends StatelessWidget {
  const CategoryItemOfCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10.0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 110.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(blurRadius: 2, color: AppColors.greyShaded500),
              ],
            ),
            child: Image.asset(AppAssets.category1Image),
          ),
        ),
        SizedBox(height: 10.h),
        Text('Fruits'),
      ],
    );
  }
}

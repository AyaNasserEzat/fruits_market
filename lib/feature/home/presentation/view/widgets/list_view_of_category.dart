import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class ListViewOfCategory extends StatelessWidget {
  const ListViewOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0),
      child: SizedBox(
        height: 120.h,
        child: ListView.builder(
          itemCount: 4,
      
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 120.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(blurRadius: 2, color: AppColors.greyShaded500),
                ],
              ),
              child: Image.asset(AppAssets.category1Image),
            );
          },
        ),
      ),
    );
  }
}

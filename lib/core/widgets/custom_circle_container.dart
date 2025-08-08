import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class CustomCircleContainer extends StatelessWidget {
  const CustomCircleContainer({
    super.key,
    required this.widget,
    this.width = 80,
    this.height,
  });

  final Widget widget;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h,
      width: width!.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 2, color: AppColors.greyShaded500)],
      ),
      child: Center(child: widget),
    );
  }
}

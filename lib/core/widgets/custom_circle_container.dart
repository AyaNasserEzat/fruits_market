import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class CustomCircleContainer extends StatelessWidget {
  const CustomCircleContainer({
    super.key,
    required this.widget,
    this.width=100 ,
    this.height=100,
    this.color=AppColors.white
  });

  final Widget widget;
  final double? width;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h,
      width: width?.w,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius:4, color: AppColors.black25)],
      ),
      child: Center(child: widget),
    );
  }
}

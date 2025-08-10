import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.color = AppColors.white,
    this.padding = const EdgeInsets.only(left: 16),
    this.height = 60,
  });
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!.h,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: color,
      boxShadow: [
            BoxShadow(color:Color(0x40000000), blurRadius: 4,offset: Offset(0, 1)),
          ],
      ),
      child: child,
    );
  }
}

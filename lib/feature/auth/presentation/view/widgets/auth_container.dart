import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    super.key,
    required this.child,
    this.color = AppColors.white,
    this.padding = const EdgeInsets.only(left: 16),
  });
  final Widget child;
  final EdgeInsetsGeometry? padding;

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: color,
        boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black12)],
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class AuthContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const AuthContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.only(left: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: padding,
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
      child: child,
    );
  }
}

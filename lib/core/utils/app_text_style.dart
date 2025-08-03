import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class AppTextStyle {
  static TextStyle boldStyle = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'poppins',
  );
  static TextStyle regularStyle = TextStyle(
    fontSize: 17.sp,
    color: AppColors.grey,
    fontFamily: 'poppins',
  );
  static TextStyle meduimStyle = TextStyle(
    fontSize: 16.sp,
    color: AppColors.white,
    fontFamily: 'poppins',
  );
}

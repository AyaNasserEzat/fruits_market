import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class AppTextStyle {
  static TextStyle poppinsBoldBlack = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  );
  static TextStyle poppinsBoldGreen = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
    fontFamily: 'Poppins',
  );

  static TextStyle regularStyle = TextStyle(
    fontSize: 17.sp,
    color: AppColors.grey,
    fontFamily: 'Poppins',
  );
  static TextStyle meduimStyle = TextStyle(
    fontSize: 16.sp,
    color: AppColors.white,
    fontFamily: 'Poppins',
  );
  static TextStyle segoeUIBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'SegoeUI',
  );

  static TextStyle arialRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: 'Arial',
  );

  static TextStyle arialRegular18 = TextStyle(
    fontSize: 20.sp,
    color: AppColors.black,
    fontFamily: 'Arial',
  );
  static TextStyle textUnderLinBlue = TextStyle(
    color: AppColors.blue,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.blue,
    fontSize: 18.sp,
    fontFamily: 'Arial',
  );
  static TextStyle titilliumWebBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    fontFamily: 'TitilliumWeb',
  );
  static TextStyle titilliumWebBoldPrimaryColor = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.primaryColor,
    fontFamily: 'TitilliumWeb',
  );
  static TextStyle titilliumWebBold24 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
    fontFamily: 'TitilliumWeb',
  );
  static TextStyle titilliumWebSemiBold = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: AppColors.white,
    fontFamily: 'TitilliumWeb',
  );
  static TextStyle titilliumWebRegular = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: AppColors.grey,
    fontFamily: 'TitilliumWeb',
  );
  static TextStyle titilliumWebRegularLineThrough = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 19.sp,
    fontFamily: 'TitilliumWeb',
    color: AppColors.greyShaded500,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.greyShaded500,
  );
    static TextStyle titilliumWebRegularLineThroughRed = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 19.sp,
    fontFamily: 'TitilliumWeb',
    color: AppColors.redLight,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.redLight,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 120.h,
    
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.grey),
      ),
      child: Center(child: SvgPicture.asset(AppAssets.userUnkown,width: 40.w,height: 44.h,)) ,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_arrow_back_icon.dart';
import 'package:fruits_market/feature/profile%20copy/presentation/views/widgets/update_profile_form.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CustomArrowBackIcon()),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              SizedBox(height: 45.h),
              Stack(
                children: [
                  Container(
                    width: 120.w,
                    height: 120.h,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                  ),
                  Positioned(
                    bottom:1,
                    right:31,
                    child: SvgPicture.asset(
                      'assets/images/camera.svg',
                      width: 24.w,
                      height: 30.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text("Welcom, Alaa", style: AppTextStyle.arialRegular18),
              SizedBox(height: 10.h),
              UpdateProfileForm(),
              
            ],
          ),
        ),
      ),
    );
  }
}

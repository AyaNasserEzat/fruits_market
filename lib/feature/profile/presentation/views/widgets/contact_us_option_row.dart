import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class ContactUsOptionRow extends StatelessWidget {
  ContactUsOptionRow({super.key});
  final List<String> images = [
    AppAssets.phone,
    AppAssets.faceBookIcon,
    AppAssets.instagramIcon,
    AppAssets.youtubeIcon,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 24.w,
      children: List.generate(images.length, (index) {
        return Container(
          width: 75.h,
          height: 75.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.black12),
          ),
          child: Center(child: SvgPicture.asset(images[index])),
        );
      }),
    );
  }
}

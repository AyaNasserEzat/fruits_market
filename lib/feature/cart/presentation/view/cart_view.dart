import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: 'Basket'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomContainer(
              height: 150,
              child: Row(
                spacing: 10.w,
                children: [
                  CustomCircleContainer(
                    height: 90,
                    widget: SvgPicture.asset(AppAssets.instagramIcon,width: 40.w,
                  height: 40.h,),
                  ),
                     Column(
                spacing: 7.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Product Name',
                    style: AppTextStyle.titilliumWebBold
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Text(
                        '12.00',
                        style: AppTextStyle.titilliumWebRegular,
                      ),
              
                      Text(
                        '10.00',
                        style: AppTextStyle.titilliumWebRegularLineThrough,
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.redLight,
                    ),
                    height: 30.h,
                    width: 120.w,
                    child: Center(
                      child: Text(
                        'up to 10% off',
                        style: AppTextStyle.titilliumWebSemiBold.copyWith(fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

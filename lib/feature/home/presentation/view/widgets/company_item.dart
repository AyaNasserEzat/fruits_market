import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/home/presentation/models/seller_model.dart';
import 'package:fruits_market/feature/home/presentation/view/all_about_seller_view.dart';

class CompanyItem extends StatelessWidget {
  const CompanyItem({super.key, required this.sellerModel});
  final SellerModel sellerModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatPush(context, AllAboutSellerView());
      },
      child: CustomContainer(
        height: 150.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCircleContainer(
              widget: SvgPicture.asset(
                sellerModel.compnyLogo,
                width: 60.w,
                height: 60.h,
              ),
            ),
            SizedBox(width: 20.w),
            Column(
              spacing: 7.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  spacing: 10.w,
                  children: [
                    Text(
                      sellerModel.sellerName,
                      style: AppTextStyle.titilliumWebBold,
                    ),
                  
                    SizedBox(width: 120.w),
                    SvgPicture.asset(AppAssets.onehandred,width: 30.w,height: 30.h,),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(AppAssets.deliveryIcon),
                    Text(
                      'Delivery Charge: ${sellerModel.deliveryCharge}',
                      style: AppTextStyle.titilliumWebRegular,
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10.w,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.greyShaded500,
                      radius: 3,
                    ),
                    Text(
                      "Open",
                      style: AppTextStyle.titilliumWebBold.copyWith(
                        color: AppColors.greenLight,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.greyShaded500,
                      radius: 3,
                    ),
                    Text(
                      '4.5',
                      style: AppTextStyle.titilliumWebRegular
                    ),
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    
    );
  }
}

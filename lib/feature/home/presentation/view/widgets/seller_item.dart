import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/home/presentation/models/seller_model.dart';

class SellerItem extends StatelessWidget {
  const SellerItem({super.key, required this.sellerModel});
  final SellerModel sellerModel;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 300.h,
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
                  SvgPicture.asset(AppAssets.onehandred),
                  SizedBox(width: 140),
                  Text('4.5'),
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
                  Text("Open", style: AppTextStyle.titilliumWebBold),
                  CircleAvatar(
                    backgroundColor: AppColors.greyShaded500,
                    radius: 3,
                  ),
                  Text(
                    sellerModel.productNmae,
                    style: AppTextStyle.titilliumWebRegular.copyWith(
                      color: AppColors.blue,
                    ),
                  ),
                  SizedBox(width: 75.w),
                  Text(
                    sellerModel.location,
                    style: AppTextStyle.arialRegular.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SvgPicture.asset(
                    AppAssets.locationIcon,
                    width: 25.w,
                    height: 25.h,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

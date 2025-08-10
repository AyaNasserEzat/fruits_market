    
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/home/presentation/view/product_details_view.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigatPush(context, ProductDetailsView());
      },
      child: CustomContainer(
        height: 150.h,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomCircleContainer(
                widget: SvgPicture.asset(
                  AppAssets.instagramIcon,
                  width: 40.w,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 20.w),
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
              //SizedBox(width: 90.w,),
              Spacer(),
              Container(
                width: 60.w,
                height: 55.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
                child: Center(child: SvgPicture.asset(AppAssets.basketAdd,width: 30.w,height: 30.h,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: 'My Order'),
      body: Column(
        children: [
          CustomContainer(
            child: Row(
              spacing: 20.h,
              children: [
                CustomCircleContainer(
                  height: 130,
                  color: AppColors.deliveringStatusBackGroundColor,
                  widget: Image.asset(AppAssets.deliveringStatusIcon),
                ),
                Column(
                  spacing: 7.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('#8882610', style: AppTextStyle.titilliumWebBold),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10.w,
                      children: [
                        Text("9 Sep", style: AppTextStyle.titilliumWebRegular),
                        CircleAvatar(
                          backgroundColor: AppColors.greyShaded500,
                          radius: 2,
                        ),
                        Text(
                          '4 items',
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10.w,
                      children: [
                        Text(
                          "Status:",
                          style: AppTextStyle.titilliumWebRegular,
                        ),

                        Text(
                          'Delivering',
                          style: AppTextStyle.titilliumWebRegular.copyWith(
                            color: AppColors.deliveringStatusdColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(AppAssets.deliveringStatusIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

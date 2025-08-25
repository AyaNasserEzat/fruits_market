import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/check_container.dart';

class DeliveryAddressBody extends StatelessWidget {
  const DeliveryAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Delivery Address ",
            style: AppTextStyle.titilliumWebBold,
          ),
          CustomContainer(
            borderRadius: 13,
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Text(
                  "Add New Address",
                  style: AppTextStyle.titilliumWebBold.copyWith(
                    color: Color(0xff4A4A4A),
                  ),
                ),
                SizedBox(width: 140),
                Icon(Icons.add, color: AppColors.greyCheckout),
              ],
            ),
          ),
          CustomContainer(
            borderRadius: 13,
            padding: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(
                      AppAssets.locationIcon,
                      width: 20,
                      height: 20,
                    ),
                    Text(
                      "Address 1",
                      style: AppTextStyle.titilliumWebBold.copyWith(
                        color: AppColors.addressColor,
                      ),
                    ),
                    SizedBox(width: 150),
                    CheckContainer(),
                  ],
                ),
                Text(
                  "John Doe",
                  style: AppTextStyle.titilliumWebRegular.copyWith(
                    color: AppColors.addressColor,
                  ),
                ),

                Text(
                  "+000-11-1234567",
                  style: AppTextStyle.titilliumWebRegular.copyWith(
                    color: AppColors.addressColor,
                  ),
                ),
                Text(
                  "Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates",
                  style: AppTextStyle.titilliumWebRegular.copyWith(
                    color: AppColors.greyCheckout,
                  ),
                ),
                
              ],
            ),
      
          ),
                SizedBox(height: 200,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/track_order_button.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: 'Checkout'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.confirmedOrderImage),
               SizedBox(height: 40,),
              Text(
                "YOUR ORDER IS CONFIRMED!",
                style: AppTextStyle.titilliumWebBold24.copyWith(
                  color: AppColors.primaryColor,

                ),
              ),
              Text(
                "Your order code: #243188",
                style: AppTextStyle.titilliumWebRegular.copyWith(
                  color: AppColors.greyDark,
                  fontSize: 20
                ),
              ),
           
              Text(
                "Thank you for choosing our products!",
                style: AppTextStyle.titilliumWebRegular.copyWith(
                  color: AppColors.greyDark,
                  fontSize: 20
                ),
              ),
                 SizedBox(height: 20,),
            CustomButton(onpressed: (){}, text: 'Continue Shoping'),
            SizedBox(height: 20,),
            TrackOrderButton()
            ],
          ),
        ),
      ),
    );
  }
}

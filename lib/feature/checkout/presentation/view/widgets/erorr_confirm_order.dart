import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/track_order_button.dart';

class ErorrConfirmOrder extends StatelessWidget {
  const ErorrConfirmOrder({super.key});

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
              SvgPicture.asset(AppAssets.errorImage),
               SizedBox(height: 40,),
               Text("OPS",style: AppTextStyle.titilliumWebBold24.copyWith(color: AppColors.redColor),),
               SizedBox(height: 10,),
              Text(
                "Error while confirming your payment/order",
                style: AppTextStyle.titilliumWebRegular.copyWith(
                  color: AppColors.greyDark,

                ),
              ),
             
                 SizedBox(height: 70,),
            CustomButton(onpressed: (){
              Navigator.pop(context);
            }, text: 'Back',color: AppColors.redColor,),
          
            ],
          ),
        ),
      ),
    );
  }
}

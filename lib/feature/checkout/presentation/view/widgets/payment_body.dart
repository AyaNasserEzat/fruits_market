import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/check_container.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Coupon Code", style: AppTextStyle.titilliumWebBold),
          CustomContainer(
            borderRadius: 13,
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Text(
                  "Do You Have any Coupon Code?",
                  style: AppTextStyle.titilliumWebRegular.copyWith(
                    color: AppColors.addressColor,
                  ),
                ),
                SizedBox(width: 10),
                CustomButton(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  height: 40,
                  width: 90,

                  onpressed: () {},
                  text: 'Apply',
                ),
              ],
            ),
          ),
          Text("Order Details", style: AppTextStyle.titilliumWebBold),
          Row(
            children: [
              Text('Total Items', style: AppTextStyle.titilliumWebRegular),
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '4 items in cart ',
                      style: AppTextStyle.titilliumWebBold.copyWith(
                        color: AppColors.greyDark,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            children: [
              Text('SubTotal', style: AppTextStyle.titilliumWebRegular),
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '345.89 ',
                      style: AppTextStyle.titilliumWebBold.copyWith(
                        color: AppColors.greyDark,
                      ),
                    ),
                    TextSpan(
                      text: 'kd',
                      style: AppTextStyle.titilliumWebBold12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          //
          Row(
            children: [
              Text('Shipping Charges', style: AppTextStyle.titilliumWebRegular),
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '345.89 ',
                      style: AppTextStyle.titilliumWebBold.copyWith(
                        color: AppColors.greyDark,
                      ),
                    ),
                    TextSpan(
                      text: 'kd',
                      style: AppTextStyle.titilliumWebBold12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(color: Color(0xffC1C1C1)),
          Row(
            children: [
              Text(
                'Bag Total',
                style: AppTextStyle.titilliumWebBold.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '345 ',
                      style: AppTextStyle.titilliumWebBold.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: 'kd',
                      style: AppTextStyle.titilliumWebBold12.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text("Payment", style: AppTextStyle.titilliumWebBold),

          CustomContainer(
            padding: EdgeInsets.all(7),
            child: Row(
              spacing: 10,
              children: [
                Image.asset(AppAssets.creditCardImage),
                Expanded(
                  child: Text(
                    "Credit Card/Debit card",
                    style: AppTextStyle.titilliumWebBold,
                  ),
                ),
              
CheckContainer(),
              ],
            ),
          ),
          CustomContainer(
            padding: EdgeInsets.all(7),
            child: Row(
              spacing: 10,
              children: [
                Image.asset(AppAssets.cashImage),
                Expanded(child: Text("Cash of Delivery", style: AppTextStyle.titilliumWebBold)),
               
                CheckContainer(),
              ],
            ),
          ),
          CustomContainer(
            padding: EdgeInsets.all(7),
            child: Row(
              spacing: 10,
              children: [
                Image.asset(AppAssets.knetImage),
                Expanded(
                  child: Text("Knet", style: AppTextStyle.titilliumWebBold),
                ),

                CheckContainer(),
              ],
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
                
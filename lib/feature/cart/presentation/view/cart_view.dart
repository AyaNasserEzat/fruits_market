import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/cart/presentation/view/widgets/cart_item.dart';
import 'package:fruits_market/feature/cart/presentation/view/widgets/dash_line_widget.dart';
import 'package:fruits_market/feature/checkout/presentation/view/checkout_view.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: 'Basket'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              CartItem(),
              SizedBox(height: 300),
              DashLine(),
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
                  Text(
                    'Shipping Charges',
                    style: AppTextStyle.titilliumWebRegular,
                  ),
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
             SizedBox(height: 34,)
,              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4 items in cart',
                        style: AppTextStyle.titilliumWebRegular,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '345 ',
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
                  Spacer(),
                  CustomButton(
                    width: 230,
                    onpressed: () {
                      navigatPush(context, CheckoutView());
                    },
                    text: 'Procced To Checkout',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

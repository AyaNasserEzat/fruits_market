import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/confirm_order.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/delivery_address_body.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/delivery_time_body.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/erorr_confirm_order.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/payment_body.dart';

import 'package:fruits_market/feature/checkout/presentation/view/widgets/time_line_checkout.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: ' CheckOut'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TimeLineCheckout(currentStep: currentStep),
            Divider(color: AppColors.greyCheckout),
            SizedBox(height: 20),
        
            if (currentStep == 0)
              DeliveryTimeBody()
            else if (currentStep == 1)
              DeliveryAddressBody()
            else
              PaymentBody(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                onpressed: () {
                  setState(() {
                    if (currentStep < 2) {
                      currentStep++;
                    }
                  });
                  if(currentStep==2){
                    navigatPush(context, ConfirmOrder());
                  }
                },
                text:currentStep==2?'Place Order': 'Continue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

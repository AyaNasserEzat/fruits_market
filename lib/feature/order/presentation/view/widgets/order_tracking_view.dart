import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/order/presentation/view/widgets/time_line_widget.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: "Order Tracking"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 5,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Your Order Code: ',
                  style: AppTextStyle.titilliumWebRegular,
                  children: [
                    TextSpan(
                      text: "#88957",
                      style: AppTextStyle.titilliumWebBold,
                    ),
                  ],
                ),
              ),
              Text(
                '3 items - 37.50 KD',
                style: AppTextStyle.titilliumWebRegular,
              ),
              Text(
                'Payment Method : Cash',
                style: AppTextStyle.titilliumWebRegular,
              ),
              TimeLineOrderTracking(),
              CustomButton(onpressed: () {}, text: "Confirm"),
              const SizedBox(height: 12),
              CustomButton(
                onpressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: SingleChildScrollView(
                          child: CustomContainer(
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 5,
                                children: [
                                  Text(
                                    'Cancel Order',
                                    style: AppTextStyle.titilliumWebBold,
                                  ),
                                  Text(
                                    "Reason",
                                    style: AppTextStyle.arialRegular18.copyWith(
                                      color: AppColors.dialogTextColor,
                                    ),
                                  ),
                                  CustomTextFormField(),
                                  Text(
                                    "Notes",
                                    style: AppTextStyle.arialRegular18.copyWith(
                                      color: AppColors.dialogTextColor,
                                    ),
                                  ),
                                  CustomTextFormField(height: 100),
                                  SizedBox(height: 30),
                                  CustomButton(
                                    onpressed: () {},
                                    text: 'Confirm Cancelation',
                                  ),
                                  
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Close",
                                      style: AppTextStyle.arialRegular18.copyWith(
                                        color: AppColors.dialogTextColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                text: "Cancel Order",
                color: AppColors.redColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

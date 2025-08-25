import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/checkout/presentation/view/widgets/check_container.dart';

class DeliveryTimeBody extends StatelessWidget {
  const DeliveryTimeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 10,
        children: [
          CustomContainer(
            borderRadius: 13,
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Text("Now", style: AppTextStyle.titilliumWebBold),
                SizedBox(width: 240),
                CheckContainer(),
              ],
            ),
          ),

          CustomContainer(
            borderRadius: 13,
            padding: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  children: [
                    Text(
                      "Select Delivery Time",
                      style: AppTextStyle.titilliumWebBold,
                    ),
                    SizedBox(width: 120),
                    CheckContainer(),
                  ],
                ),
                Text('Select Date', style: AppTextStyle.titilliumWebRegular),
              ],
            ),
          ),
         SizedBox(height: 300),
        ],
      ),
    );
  }
}

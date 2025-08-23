import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
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
              Text.rich(TextSpan(text:'Your Order Code: ',style: AppTextStyle.titilliumWebRegular,children: [
                TextSpan(text:"#88957",style:AppTextStyle.titilliumWebBold ),
              ] ))
              ,
              Text('3 items - 37.50 KD', style: AppTextStyle.titilliumWebRegular,),
              Text('Payment Method : Cash', style: AppTextStyle.titilliumWebRegular,),
              TimeLineOrderTracking(),
              CustomButton(onpressed: () {}, text: "Confirm"),
            const SizedBox(height: 12),
            CustomButton(
              onpressed: () {},
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


import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/cart/presentation/view/widgets/dash_line_widget.dart';
import 'package:timelines_plus/timelines_plus.dart';

class TimeLineCheckout extends StatelessWidget {
   TimeLineCheckout({
    super.key,
required this.currentStep,
  });

final List<String> statuses = [
    "Delivery Time",
    "Delivery Address",
    "Payment",
  ];

  

  final int currentStep; 


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: FixedTimeline.tileBuilder(
        theme: TimelineTheme.of(context).copyWith(
          nodePosition: 0,
           direction: Axis.horizontal,
        ),
        builder: TimelineTileBuilder.connected(
          connectionDirection: ConnectionDirection.before,
          contentsAlign: ContentsAlign.basic,
         
          itemCount: statuses.length,
          contentsBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  statuses[index],
                  style: AppTextStyle.titilliumWebRegular.copyWith(color: AppColors.primaryColor),
                ),
              ),
          indicatorBuilder: (context, index) {
            if (index == currentStep) {
              return  Container(
                width: 20,
                height: 20,
                decoration:  BoxDecoration(
                  border: Border.all(color:AppColors.primaryColor ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),),
                );
            } else if (index > currentStep) {
              return  Container(
                width: 20,
                height: 20,
                decoration:  BoxDecoration(
                  border: Border.all(color:AppColors.greyCheckout ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 6,
                    height:6,
                    decoration: const BoxDecoration(
                      color: AppColors.greyCheckout,
                      shape: BoxShape.circle,
                    ),
                  ),),
                );
            } else {
              return Container(
                width: 20,
                height: 20,
                decoration:  BoxDecoration(
                  border: Border.all(color:AppColors.greyCheckout ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: AppColors.greyCheckout,
                      shape: BoxShape.circle,
                    ),
                  ),),
                );
            }
          },
          connectorBuilder: (context, index, connectorType) {
            return DashLine();
          },
        ),
        
      ),
    );
  }
}

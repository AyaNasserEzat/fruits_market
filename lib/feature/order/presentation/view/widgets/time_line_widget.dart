
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:timelines_plus/timelines_plus.dart';

class TimeLineOrderTracking extends StatelessWidget {
   TimeLineOrderTracking({
    super.key,

  });

final List<String> statuses = [
    "Delivered",
    "Out for delivery",
    "Order shipped",
    "Confirmed",
    "Order Placed",
  ];

  final List<String> dates = [
    "Estimated for 10 September, 2021",
    "Estimated for 10 September, 2021",
    "10 September, 2021",
    "Confirmed by system",
    "We have received your order",
  ];

  final int currentStep = 2; // خليها حسب الطلب (index الحالي)


  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineTheme.of(context).copyWith(
        nodePosition: 0
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        contentsAlign: ContentsAlign.basic,
       
        itemCount: statuses.length,
        contentsBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 28,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(
                    statuses[index],
                    style: AppTextStyle.titilliumWebBold,
                  ),
                  Text(
                    dates[index],
                    style: AppTextStyle.titilliumWebRegular,
                  ),
                ],
              ),
            ),
        indicatorBuilder: (context, index) {
          if (index == currentStep) {
            return const DotIndicator(color: AppColors.green, size: 30);
          } else if (index > currentStep) {
            return const DotIndicator(color: Colors.green, size: 30);
          } else {
            return ContainerIndicator(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: AppColors.green),
                ),
              ),
            );
          }
        },
        connectorBuilder: (context, index, connectorType) {
          return SolidLineConnector(color: AppColors.green);
        },
      ),
      
    );
  }
}

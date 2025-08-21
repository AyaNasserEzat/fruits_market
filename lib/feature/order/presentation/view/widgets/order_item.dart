import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/order/data/models/order_model.dart';
import 'package:fruits_market/feature/order/presentation/view/widgets/order_tracking_view.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,required this.orderModel
  });
final OrderModel orderModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomContainer(
            child: Row(
              spacing: 10.h,
              children: [
                CustomCircleContainer(
                  height: 80,
                  color: orderModel.color,
                  widget: SvgPicture.asset(orderModel.icon),
                ),
                Column(
                  spacing: 7.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(orderModel.orderCode, style: AppTextStyle.titilliumWebBold),
    
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5.w,
                      children: [
                        Text(
                          orderModel.date,
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                        CircleAvatar(
                          backgroundColor: AppColors.greyShaded500,
                          radius: 2,
                        ),
                        Text(
                          orderModel.itemsCount.toString(),
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 3.w,
                      children: [
                        Text(
                          "Status:",
                          style: AppTextStyle.titilliumWebRegular,
                        ),
    
                        Text(
                          orderModel.status,
                          style: AppTextStyle.titilliumWebRegular.copyWith(
                            color: AppColors.deliveringStatusdColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                CustomCircleContainer(
                  color: orderModel.color2,
                  height: 80,
                  widget: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.white, width: 2),
                      borderRadius: BorderRadius.circular(8),
                      color: orderModel.color2,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        navigatPush(context, OrderTrackingView());
                      },
                    child: Icon(  Icons.arrow_forward_ios_rounded,
                      color: AppColors.white,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

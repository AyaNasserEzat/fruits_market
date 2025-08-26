import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/feature/order/presentation/view/widgets/order_tracking_view.dart';

class TrackOrderButton extends StatelessWidget {
  const TrackOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          navigatPush(context, OrderTrackingView());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: AppColors.primaryColor),
          ),
        ),
        child: Center(
          child: Text(
            'Track Order',
            style: AppTextStyle.titilliumWebBold.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

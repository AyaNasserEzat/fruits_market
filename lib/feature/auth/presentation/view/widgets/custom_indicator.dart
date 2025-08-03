import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,required this.currentIndex
  });
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          width: 12.w,
          height: 12.h,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color:currentIndex==index?AppColors.primaryColor: AppColors.white,
            border: Border.all(color: AppColors.primaryColor),
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}

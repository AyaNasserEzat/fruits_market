import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/auth/data/models/on_bording_model.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_indicator.dart';
import 'package:fruits_market/feature/home/presentation/view/home_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.onBordingModel,
    required this.currentIndex,
    required this.pageController,
  });
  final OnBordingModel onBordingModel;
  final int currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 81.h),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text(AppStrings.skip, style: AppTextStyle.regularStyle)],
          ),
        ),
        Image.asset(AppAssets.appNameImg),
        Text(onBordingModel.title, style: AppTextStyle.boldStyle),
        SizedBox(height: 16.h),
        Text(onBordingModel.subTitle, style: AppTextStyle.regularStyle),
        SizedBox(height: 98.h),

        CustomIndicator(currentIndex: currentIndex),
        SizedBox(height: 98.h),
      currentIndex!=2?  CustomButton(
          onpressed: () {
            pageController.nextPage(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.ease,
            );
          },
          text: 'Next',
        ):CustomButton(
          onpressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return HomeView();
            }));
          },
          text: 'Get Started',
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/custom_indicator.dart';
import 'package:fruits_market/feature/home/presentation/models/seller_model.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/list_view_of_category.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/seller_item.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/show_all_seller_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.appName,
          style: AppTextStyle.poppinsBoldBlack.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        actions: [
          SvgPicture.asset(AppAssets.searchIcon, width: 25, height: 30),
          SizedBox(width: 10),
          SvgPicture.asset(AppAssets.filterIcon, width: 25, height: 30),
        ],
      ),
      body: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            
            children: [
              Image.asset(AppAssets.homeImage),
              SizedBox(height: 16.h),
              CustomIndicator(currentIndex: 0),
              SizedBox(height: 16.h),
              ListViewOfCategory(),
              SizedBox(height: 20),
              ShowAllSellerRow(),
              SellerItem(sellerModel: SellerModel.sellers[0])
            ],
          ),
        ),
      ),
    );
  }
}

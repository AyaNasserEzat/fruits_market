import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_arrow_back_icon.dart';
import 'package:fruits_market/feature/home/presentation/models/seller_model.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/company_item.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/list_of_category_of_company.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/product_item.dart';

class AllAboutSellerView extends StatelessWidget {
  const AllAboutSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomArrowBackIcon(),
        title: Text(AppStrings.appName, style: AppTextStyle.poppinsBoldGreen),
        centerTitle: true,
        actions: [
          SvgPicture.asset(AppAssets.searchIcon, width: 25.w),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 3.h,
          children: [
            CompanyItem(sellerModel: SellerModel.sellers[0]),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Categories', style: AppTextStyle.titilliumWebBold),
            ),
            ListOfCategoryOfCompany(),
            Row(
              children: [
                Text("Products", style: AppTextStyle.titilliumWebBold),

                Spacer(),
                SvgPicture.asset(AppAssets.arrowProducts),
              ],
            ),
            SizedBox(height: 10.h),
            ProductItem(),
            SizedBox(height: 10.h),
            ProductItem(),
          ],
        ),
      ),
    );
  }
}

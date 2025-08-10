import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appName, style: AppTextStyle.poppinsBoldGreen),
        actions: [
          Icon(Icons.search, size: 25),
          SizedBox(width: 10),

          Icon(Icons.file_upload_outlined, size: 25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppAssets.productDetailsImage),
              SizedBox(height: 10.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Category Name',
                        style: AppTextStyle.titilliumWebBoldPrimaryColor,
                      ),
                      Spacer(),
                      Text('Price', style: AppTextStyle.titilliumWebRegular),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Text(
                        'Product Name',
                        style: AppTextStyle.titilliumWebBold24,
                      ),
                      Spacer(),
                      Text(
                        'KD 12.00',
                        style: AppTextStyle.titilliumWebBold24.copyWith(
                          color: AppColors.greyDark,
                        ),
                      ),
              
                      Text(
                        '10.00',
                        style: AppTextStyle.titilliumWebRegularLineThroughRed,
                      ),
                    ],
                  ),
                  Text(
                    AppStrings.productDescription,
                    style: AppTextStyle.titilliumWebRegular,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Selle Per: Kartoon ",
                    style: AppTextStyle.titilliumWebRegular,
                  ),
                  ExpansionTile(
                    shape: Border.all(color: AppColors.white),
                    collapsedShape: Border.all(color: AppColors.white),
                    title: Text(
                      'Select Weight',
                      style: AppTextStyle.titilliumWebBold,
                    ),
                    children: [
                      RadioListTile(
                        title: Text(
                          '50 Gram - 4.00 KD',
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                        value: '50 Gram - 4.00 KD',
                        groupValue: '50 Gram - 4.00 KD',
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        title: Text(
                          '50 Gram - 4.00 KD',
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                        value: '1 Kg - 6.25 KD',
                        groupValue: '1 Kg - 6.25 KD',
              
                        onChanged: (value) {},
                      ),
                      //50 Gram - 4.00 KD
                   
                    ],
                  ),
                       ExpansionTile(
                    shape: Border.all(color: AppColors.white),
                   collapsedShape: Border.all(color: AppColors.white),
                   collapsedBackgroundColor: AppColors.white,
              
                    title: Text(
                      'Select Addons',
                      style: AppTextStyle.titilliumWebBold,
                    ),
                    children: [
                      RadioListTile(
                        title: Text(
                          '50 Gram - 4.00 KD',
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                        value: '50 Gram - 4.00 KD',
                        groupValue: '50 Gram - 4.00 KD',
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        title: Text(
                          '50 Gram - 4.00 KD',
                          style: AppTextStyle.titilliumWebRegular,
                        ),
                        value: '1 Kg - 6.25 KD',
                        groupValue: '1 Kg - 6.25 KD',
              
                        onChanged: (value) {},
                      ),
                    ],
                        )
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

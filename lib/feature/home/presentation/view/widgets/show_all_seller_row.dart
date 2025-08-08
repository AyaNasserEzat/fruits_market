
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class ShowAllSellerRow extends StatelessWidget {
  const ShowAllSellerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Seller", style: AppTextStyle.segoeUIBold),
        Spacer(),
        Text(
          "Show All",
          style: AppTextStyle.arialRegular18.copyWith(
            color: AppColors.blue,
          ),
        ),
      ],
    );
  }
}

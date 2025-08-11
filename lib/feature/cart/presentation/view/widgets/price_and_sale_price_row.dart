
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class PriceAndSalePriceRow extends StatelessWidget {
  const PriceAndSalePriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Text(
          '12.00',
          style: AppTextStyle.titilliumWebRegular,
        ),
                  
        Text(
          '10.00',
          style: AppTextStyle.titilliumWebRegularLineThrough,
        ),
      ],
    );
  }
}

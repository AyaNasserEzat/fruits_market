import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/cart/presentation/view/widgets/plus_minus_quntaity_widget.dart';
import 'package:fruits_market/feature/cart/presentation/view/widgets/price_and_sale_price_row.dart';
import 'package:fruits_market/feature/cart/presentation/view/widgets/up_to_offer_container.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
             
      child: Row(
        spacing: 10.w,
        children: [
          CustomCircleContainer(
           
            widget: SvgPicture.asset(
              AppAssets.instagramIcon,
              width: 40.w,
              height: 40.h,
            ),
          ),
          Column(
            spacing: 7.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Product Name',
                    style: AppTextStyle.titilliumWebBold,
                  ),
                  SizedBox(width: 90.w),
                  Icon(Icons.delete_forever, size: 30),
                ],
              ),
              PriceAndSalePriceRow(),
              Row(
                children: [
                  UpToOfferContainer(),
                  SizedBox(width: 20.w),
                  PlusMinusQuntityWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fruits_market/core/utils/app_colors.dart';
// import 'package:fruits_market/core/utils/app_text_style.dart';
// import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
// import 'package:fruits_market/feature/favorite/data/models/favorit_product_model.dart';

// class FavoriteProductItem extends StatelessWidget {
//   const FavoriteProductItem({super.key, required this.favoritProductModel});
//   final FavoritProductModel favoritProductModel;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: CustomContainer(

//         height: 300.h,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CustomContainer(
//               child: SvgPicture.asset(
//                 favoritProductModel.productImage,
//                 width: 60.w,
//                 height: 60.h,
//               ),
//             ),
//             SizedBox(width: 20.w),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   favoritProductModel.productName,
//                   style: AppTextStyle.titilliumWebBold,
//                 ),
//                 Row(
//                   spacing: 10,
//                   children: [
//                     Text(
//                       favoritProductModel.price,
//                       style: AppTextStyle.titilliumWebRegular,
//                     ),

//                     Text(
//                       favoritProductModel.salPrice,
//                       style: AppTextStyle.titilliumWebRegularLineThrough,
//                     ),
//                   ],
//                 ),

//                 Text(
//                   "Store Name : ${favoritProductModel.storName}",
//                   style: AppTextStyle.titilliumWebBold,
//                 ),
//               ],
//             ),
//             Spacer(),
//             Container(
//               width: 40.w,
//               height: 49.h,
//               decoration: BoxDecoration(
//                 color: AppColors.white,
//                 shape: BoxShape.circle,
//                 boxShadow: [
//                   BoxShadow(blurRadius: 2, color: AppColors.greyShaded500),
//                 ],
//               ),
//               child: Center(
//                 child: Icon(Icons.close, color: AppColors.grey, size: 25),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_circle_container.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/customcontainer.dart';
import 'package:fruits_market/feature/favorite/data/models/favorit_product_model.dart';

class FavoriteProductItem extends StatelessWidget {
  const FavoriteProductItem({super.key, required this.favoritProductModel});
  final FavoritProductModel favoritProductModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomContainer(
        height: 300.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCircleContainer(
              widget: SvgPicture.asset(
                favoritProductModel.productImage,
                width: 60.w,
                height: 60.h,
              ),
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  favoritProductModel.productName,
                  style: AppTextStyle.titilliumWebBold,
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      favoritProductModel.price,
                      style: AppTextStyle.titilliumWebRegular,
                    ),

                    Text(
                      favoritProductModel.salPrice,
                      style: AppTextStyle.titilliumWebRegularLineThrough,
                    ),
                  ],
                ),

                Text(
                  "Store Name : ${favoritProductModel.storName}",
                  style: AppTextStyle.titilliumWebBold,
                ),
              ],
            ),
            Spacer(),
            CustomCircleContainer(
              width: 40,
              height: 44,
              widget: Center(
                child: Icon(Icons.close, color: AppColors.grey, size: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

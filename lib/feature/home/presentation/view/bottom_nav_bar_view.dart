import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/feature/favorite/presentation/view/favorite_view.dart';
import 'package:fruits_market/feature/home/presentation/view/home_view.dart';
import 'package:fruits_market/feature/profile/presentation/views/profile_view.dart';

class BottomNavBarView extends StatefulWidget {
  BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  final List<String> icons = [
    AppAssets.homeIcon,
    AppAssets.orderIcon,
    AppAssets.bassketIon,
    AppAssets.favoriteIcon,
    AppAssets.more,
  ];
  final List<String> selectedIcons = [
    AppAssets.selectedHome,
    AppAssets.selectedOrder,
    AppAssets.selectedBasket,
    AppAssets.selectedFavorite,
    AppAssets.selectedMore,
  ];
  final List<String> lables = [
    AppStrings.home,
    AppStrings.order,
    AppStrings.bassket,
    AppStrings.favorite,
    AppStrings.more,
  ];

  final List<Widget> views = [
    FavoriteView(),
    ProfileView(),
    FavoriteView(),
   FavoriteView(),
    ProfileView(),
  ];

  int currentIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndx],
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            return GestureDetector(
              onTap: () {
                changeCurrentIndx(index);
              },
              child:
                  currentIndx == index
                      ? Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(selectedIcons[index]),

                            SizedBox(width: 6.w),
                            Text(
                              lables[index],
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      )
                      : SvgPicture.asset(icons[index]),
            );
          }),
        ),
      ),
    );
  }

  void changeCurrentIndx(int index) {
    return setState(() {
      currentIndx = index;
    });
  }
}

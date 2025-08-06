import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/utils/commans.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:fruits_market/feature/profile/presentation/views/about_us_view.dart';
import 'package:fruits_market/feature/profile/presentation/views/terms_of_privacy_view.dart';
import 'package:fruits_market/feature/profile/presentation/views/update_profile_view.dart';
import 'package:fruits_market/feature/profile/presentation/views/widgets/profil_item_list_tile.dart';
import 'package:fruits_market/feature/profile/presentation/views/widgets/profile_image.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Divider(color: AppColors.lightGrey, thickness: 1),
            SizedBox(height: 25.h),
            ProfileImage(),
            SizedBox(height: 16.h),
            Text("Welcom, Fruit Market", style: AppTextStyle.arialRegular18.copyWith(fontSize: 24)),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomButton(onpressed: () {}, text: 'Login'),
            ),
        
            ProfileItemListTile(
              imageurl: AppAssets.profile,
              title: AppStrings.profile,
              onPressed: () {
               navigatPush(context, UpdateProfileView());
              },
            ),
            ProfileItemListTile(
              imageurl: AppAssets.selectedOrder,
              title: AppStrings.myOrder,
              onPressed: () {},
            ),
            ProfileItemListTile(
              imageurl: AppAssets.favorite,
              title: AppStrings.favorite,
              onPressed: () {},
            ),
            ProfileItemListTile(
              imageurl: AppAssets.language,
              title: AppStrings.language,
              onPressed: () {},
            ),
            ProfileItemListTile(
              imageurl: AppAssets.support,
              title: AppStrings.support,
              onPressed: () {},
            ),
            ProfileItemListTile(
              imageurl: AppAssets.terms,
              title: AppStrings.terms,
              onPressed: () {
                navigatPush(context, TermsOfPrivacyView());
              },
            ),
            ProfileItemListTile(
              imageurl: AppAssets.about,
              title: AppStrings.aboutUs,
              onPressed: () {
                navigatPush(context, AboutUsView());
              },
            ),
          ],
        ),
      ),
    );
  }
}

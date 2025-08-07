import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/favorite/data/models/favorit_product_model.dart';
import 'package:fruits_market/feature/favorite/presentation/view/widgets/favorit_product_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.favorite,
          style: AppTextStyle.poppinsBoldGreen.copyWith(fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FavoriteProductItem(
            favoritProductModel: FavoritProductModel.favorits[index],
          );
        },
      ),
    );
  }
}

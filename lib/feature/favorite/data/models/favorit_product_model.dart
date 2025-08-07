import 'package:fruits_market/core/utils/app_assets.dart';

class FavoritProductModel {
  final String productName;
  final String price;
  final String salPrice;
  final String productImage;
  final String storName;

  FavoritProductModel({
    required this.productName,
    required this.price,
    required this.salPrice,
    required this.productImage,
    required this.storName,
  });

  static List<FavoritProductModel> favorits = [
    FavoritProductModel(
      productName: 'Product Name',
      price: '14.00',
      salPrice: '12.00',
      productImage: AppAssets.bassketIon,
      storName: 'stor 1',
    ),
  ];
}

import 'package:fruits_market/core/utils/app_assets.dart';

class SellerModel {
  final String sellerName;
  final String deliveryCharge;
  final String productNmae;
  final String compnyLogo;
  final String location;
  final bool isOpen;



  static List<SellerModel> sellers = [
    SellerModel(sellerName: 'Seller name', deliveryCharge: 'delivery Charge', productNmae: 'pizza', compnyLogo: AppAssets.instagramIcon, isOpen:true,location: '2.5 KM' ),
  ];

  SellerModel({required this.sellerName, required this.deliveryCharge, required this.productNmae, required this.compnyLogo, required this.isOpen,required this.location});
}

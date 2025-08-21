import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class OrderModel {
  final String orderCode;
  final String date;
  final int itemsCount;
  final String status;
  final Color color;
  final Color color2;
  final String icon;

  OrderModel({
    required this.orderCode,
    required this.date,
    required this.itemsCount,
    required this.status,
    required this.color,
    required this.color2,
    required this.icon,
  });

static List<OrderModel> ordersList = [
  OrderModel(
    orderCode: "#243188",
    date: "9 Sep",
    itemsCount: 4,
    status: "Delivering",
    color: AppColors.deliveringStatusBackGroundColor,
    color2: AppColors.deliveringStatusdColor,
    icon: AppAssets.deliveringStatus,
  ),
  OrderModel(
    orderCode: "#882610",
    date: "8 Sep",
    itemsCount: 3,
    status: "Finished",
    color: AppColors.finishOrderBackground,
    color2: AppColors.greenLight,
    icon: AppAssets.finishedImage,
  ),
  OrderModel(
    orderCode: "#882610",
    date: "8 Sep",
    itemsCount: 3,
    status: "Canceled",
    color: AppColors.cancelOrderBackground,
    color2: AppColors.redColor,
    icon: AppAssets.cancelImage,
  ),
  OrderModel(
    orderCode: "#882610",
    date: "8 Sep",
    itemsCount: 3,
    status: "Working",
    color: AppColors.workingOrderBackground,
    color2: AppColors.workingOrderBackgroundDark,
    icon: AppAssets.workingImage,
  ),
  OrderModel(
    orderCode: "#882610",
    date: "8 Sep",
    itemsCount: 3,
    status: "Delivered",
    color: AppColors.deliviredOrderBackground,
    color2: AppColors.deliviredOrderBackgroundDark,
    icon: AppAssets.deliveredImage,
  ),
  OrderModel(
    orderCode: "#882610",
    date: "8 Sep",
    itemsCount: 3,
    status: "New",
    color: AppColors.newOrderBackground,
    color2: AppColors.newOrderBackgroundDark,
    icon: AppAssets.newImage,
  ),
];
}
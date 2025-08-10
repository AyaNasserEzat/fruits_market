 import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_arrow_back_icon.dart';

abbBar({ required String title}){
  return AppBar(
    title: Text(title,style: AppTextStyle.poppinsBoldGreen,),
    centerTitle: true,
    leading: CustomArrowBackIcon(),
  );
 }
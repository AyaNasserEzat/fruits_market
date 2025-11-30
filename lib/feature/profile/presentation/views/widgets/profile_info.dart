

import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcom, Aya", style: AppTextStyle.arialRegular18.copyWith(fontSize: 24)),
      Text("01120767211", style: AppTextStyle.arialRegular18),
    
      ],
    );
  }
}

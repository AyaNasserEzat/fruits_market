
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class CheckContainer extends StatefulWidget {
  const CheckContainer({
    super.key,
  });

  @override
  State<CheckContainer> createState() => _CheckContainerState();
}

class _CheckContainerState extends State<CheckContainer> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
        setState(() {
          isSelected=!isSelected;
        });
      },
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(),
          color: isSelected?AppColors.primaryColor:AppColors.white
        ),
        child: isSelected?Icon(Icons.check,color: AppColors.white,):Container(),
      ),
    );
  }
}

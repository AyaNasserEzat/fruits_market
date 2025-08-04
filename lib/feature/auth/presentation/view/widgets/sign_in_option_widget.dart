import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/auth_container.dart';

class SignInOptionWidget extends StatelessWidget {
  const SignInOptionWidget({
    super.key,
    required this.iconPath,
    required this.text,
    this.onTap,
    this.color = Colors.white,
  });
  final String iconPath;
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AuthContainer(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(iconPath), SizedBox(width: 10.w), Text(text,style: TextStyle(
            color: color!=AppColors.white?AppColors.white:AppColors.black
          ),)],
        ),
      ),
    );
  }
}

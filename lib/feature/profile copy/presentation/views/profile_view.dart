import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/profile%20copy/presentation/views/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appName, style: AppTextStyle.poppinsBoldGreen.copyWith(fontSize: 24)),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ProfileBody(),
    );
  }
}


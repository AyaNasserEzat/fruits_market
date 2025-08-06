import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/utils/app_strings.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/core/widgets/custom_arrow_back_icon.dart';
import 'package:fruits_market/feature/profile/presentation/views/widgets/contact_us_form.dart';
import 'package:fruits_market/feature/profile/presentation/views/widgets/contact_us_option_row.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomArrowBackIcon(),
        centerTitle: true,
        title: Text(
          AppStrings.conntactUs,
          style: AppTextStyle.poppinsBoldGreen.copyWith(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          ContactUsForm(),
          SizedBox(height: 40.h),
          ContactUsOptionRow(),
        ],
      ),
    );
  }
}

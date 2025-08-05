import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/helpers/cache_helper.dart';
import 'package:fruits_market/core/services/service_locatore.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/feature/auth/presentation/view/splash_view.dart';
import 'package:fruits_market/feature/home/presentation/view/bottom_nav_bar_view.dart';
import 'package:fruits_market/feature/profile%20copy/presentation/views/profile_view.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  setup();
  await sl<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,

      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: AppBarTheme(
              color: AppColors.white
            )
          ),
          home: BottomNavBarView(),
        );
      },
    );
  }
}

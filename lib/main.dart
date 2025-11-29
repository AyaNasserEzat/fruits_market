import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/routing/app_router.dart';
import 'package:fruits_market/core/routing/routes.dart';
import 'package:fruits_market/core/services/service_locatore.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/feature/auth/presentation/view/on_bording_view.dart';
import 'package:fruits_market/feature/home/presentation/view/bottom_nav_bar_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

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
              backgroundColor: AppColors.white,
              scrolledUnderElevation: 0,
            ),
          ),
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: AppRouter.generateRout,
          // home: OnBordingView(),
        );
      },
    );
  }
}

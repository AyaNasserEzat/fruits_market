import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/routing/routes.dart';
import 'package:fruits_market/core/services/service_locatore.dart';
import 'package:fruits_market/feature/auth/presentation/view/login_view.dart';
import 'package:fruits_market/feature/auth/presentation/view/on_bording_view.dart';
import 'package:fruits_market/feature/auth/presentation/view/sign_up_view.dart';
import 'package:fruits_market/feature/auth/presentation/view_model/auth_cubit/auth_cubit.dart';
import 'package:fruits_market/feature/home/presentation/view/bottom_nav_bar_view.dart';
import 'package:fruits_market/feature/profile/presentation/views/profile_view.dart';
import 'package:fruits_market/feature/profile/presentation/views/update_profile_view.dart';

class AppRouter {
  static Route? generateRout(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBordingView());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<AuthCubit>(),
                child: SignUpView(),
              ),
        );

      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileView());
      case Routes.updateProfileScreen:
        return MaterialPageRoute(builder: (_) => UpdateProfileView());

      case Routes.bottomNavigationBar:
        return MaterialPageRoute(builder: (_) => BottomNavBarView());

      default:
        return null;
    }
  }
}

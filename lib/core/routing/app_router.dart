import 'package:flutter/material.dart';
import 'package:work/core/routing/routes.dart';
import 'package:work/features/auth/presentation/screens/onboarding/on_boarding_screen.dart';
import 'package:work/features/auth/presentation/screens/splash/splash_screen.dart';
import 'package:work/features/home/presentation/screens/home_bottom_nav_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    // final arguments = setting.arguments;
    switch (setting.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreens());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeBottomNavScreen());
      default:
        return null;
    }
  }
}

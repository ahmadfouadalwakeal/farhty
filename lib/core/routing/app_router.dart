import 'package:flutter/material.dart';
import 'package:work/core/routing/routes.dart';
import 'package:work/features/home/presentation/screens/home_bottom_nav_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    // final arguments = setting.arguments;
    switch (setting.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeBottomNavScreen());
      case Routes.homeDetailsScreen:
        return MaterialPageRoute(builder: (_) => const HomeBottomNavScreen());
      default:
        return null;
    }
  }
}

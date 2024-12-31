import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/bottom_navigation_bar_items.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_strings.dart';
import '../../../../core/theming/colors.dart';
import '../controller/home_cubit.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeCubit.pages[context.read<HomeCubit>().selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          buildNavBarItem(AppAssets.list, AppStrings.list, 0, context),
          buildNavBarItem(AppAssets.comp, AppStrings.comp, 1, context),
          buildNavBarItem(AppAssets.chat, AppStrings.chat, 2, context),
          buildNavBarItem(
              AppAssets.notification, AppStrings.notification, 3, context),
          buildNavBarItem(AppAssets.home, AppStrings.home, 4, context),
        ],
        currentIndex: context.watch<HomeCubit>().selectedIndex,
        selectedItemColor: ColorsManager.primary,
        selectedIconTheme: IconThemeData(color: ColorsManager.primary),
        onTap: context.read<HomeCubit>().changeBottomNav,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

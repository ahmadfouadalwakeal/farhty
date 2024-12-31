import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/home/presentation/controller/home_cubit.dart';
import '../theming/colors.dart';

BottomNavigationBarItem buildNavBarItem(
    String iconPath, String label, int index, BuildContext context) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      iconPath,
      colorFilter: context.read<HomeCubit>().selectedIndex == index
          ? ColorFilter.mode(ColorsManager.primary, BlendMode.srcIn)
          : ColorFilter.mode(ColorsManager.mainGray, BlendMode.srcIn),
    ),
    label: label,
  );
}

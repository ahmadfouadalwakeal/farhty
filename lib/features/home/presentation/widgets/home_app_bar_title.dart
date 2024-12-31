import 'package:flutter/material.dart';
import 'package:work/core/theming/app_strings.dart';
import 'package:work/core/theming/colors.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          AppStrings.welcome,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: ColorsManager.mainGray,
                fontSize: 16,
              ),
        ),
        Text(
          AppStrings.name,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: ColorsManager.mainWhite,
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}

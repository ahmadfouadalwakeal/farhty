import 'package:flutter/material.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_strings.dart';
import '../../../../core/theming/colors.dart';
import 'home_icons_components_grid_view.dart';

class HomeIconGridView extends StatelessWidget {
  const HomeIconGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        final items = [
          HomeIconComponent(
            color: ColorsManager.darkPink,
            imagePath: AppAssets.youtube,
            nameIcon: AppStrings.youtube,
          ),
          HomeIconComponent(
            color: ColorsManager.lightPink,
            imagePath: AppAssets.tiktok,
            nameIcon: AppStrings.tiktok,
          ),
          HomeIconComponent(
            color: ColorsManager.yellow,
            imagePath: AppAssets.snapchat,
            nameIcon: AppStrings.snapChat,
          ),
          HomeIconComponent(
            color: ColorsManager.lightGray,
            imagePath: AppAssets.store,
            nameIcon: AppStrings.onlineStores,
          ),
          HomeIconComponent(
            color: ColorsManager.moreDarkPink,
            imagePath: AppAssets.instagram,
            nameIcon: AppStrings.instagram,
          ),
          HomeIconComponent(
            color: ColorsManager.mainGray,
            imagePath: AppAssets.twitter,
            nameIcon: AppStrings.twitter,
          ),
        ];
        return items[index];
      },
    );
  }
}

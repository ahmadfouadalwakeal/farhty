import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/colors.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCircularIcon(SvgPicture.asset(AppAssets.twitter,
              color: ColorsManager.mainDarkPurple, height: 40)),
          _buildCircularIcon(SvgPicture.asset(AppAssets.snapchat,
              color: ColorsManager.mainDarkPurple, height: 40)),
          _buildCircularIcon(SvgPicture.asset(AppAssets.instagram,
              color: ColorsManager.mainDarkPurple, height: 40)),
        ],
      ),
    );
  }

  Widget _buildCircularIcon(Widget icon) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsManager.lightGray,
      ),
      child: Center(child: icon),
    );
  }
}

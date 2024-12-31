import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:work/core/theming/app_assets.dart';
import 'package:work/core/theming/colors.dart';

class HomeIconComponent extends StatelessWidget {
  final Color? color;
  final String? imagePath;
  final String? nameIcon;
  const HomeIconComponent({
    super.key,
    required this.color,
    required this.imagePath,
    required this.nameIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.11,
          width: MediaQuery.sizeOf(context).width * 0.24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color ?? ColorsManager.lightPink,
          ),
          child: Padding(
            padding: const EdgeInsets.all(27),
            child: SvgPicture.asset(
              imagePath ?? AppAssets.youtube,
            ),
          ),
        ),
        Text(
          nameIcon ?? 'Youtube',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: ColorsManager.darkPurple,
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}

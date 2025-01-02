import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class LoginTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const LoginTitle({super.key, required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: ColorsManager.darkGray),
          ),
        ],
      ),
    );
  }
}

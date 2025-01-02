import 'package:flutter/material.dart';
import 'package:work/core/theming/colors.dart';

class HomeBodyTitles extends StatelessWidget {
  final String? title;
  final Color? color;
  const HomeBodyTitles({super.key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(title ?? 'please write title',
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: color ?? ColorsManager.darkPurple,
              fontSize: 16,
            ));
  }
}

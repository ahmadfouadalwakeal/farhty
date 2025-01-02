import 'package:flutter/material.dart';
import 'package:work/core/theming/colors.dart';

class BackButtonIconAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsManager.lightGray,
      ),
      child: Icon(
        Icons.arrow_back_ios_outlined,
        color: ColorsManager.darkGray,
        size: 30,
      ),
    );
  }
}

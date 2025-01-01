import 'package:flutter/material.dart';
import 'package:work/core/theming/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = ColorsManager.primary,
  });
  final VoidCallback onPressed;
  final String text;
  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: WidgetStateProperty.all(backgroundColor),
          ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(color: ColorsManager.mainWhite),
      ),
    );
  }
}

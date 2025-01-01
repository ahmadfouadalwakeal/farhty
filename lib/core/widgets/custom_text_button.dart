import 'package:flutter/material.dart';
import 'package:work/core/theming/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: ColorsManager.lightGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: ColorsManager.darkGray)),
    );
  }
}

import 'package:flutter/material.dart';

import '../theming/colors.dart';

class AppTextField extends StatelessWidget {
  final String title;
  TextInputType? keyboardType;

  AppTextField({super.key, required this.title, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorsManager.lightBlue),
            ),
            filled: true,
            fillColor: ColorsManager.lightGray,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

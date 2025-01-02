import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const TermsAndConditionsCheckbox(
      {required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'الشروط والاحكام و سياسة الخصوصية',
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 16, color: ColorsManager.lightBlue),
        ),
        Text(
          'اوافق على ',
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 16, color: ColorsManager.darkPurple),
        ),
        Checkbox(
          activeColor: ColorsManager.lightBlue,
          checkColor: ColorsManager.mainWhite,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

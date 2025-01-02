import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/colors.dart';

class AccountTypeSelector extends StatelessWidget {
  final String labelType;
  Function()? showAccountDialog;

  AccountTypeSelector(
      {super.key, required this.labelType, required this.showAccountDialog});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: showAccountDialog,
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * .07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsManager.lightGray,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(FontAwesomeIcons.chevronDown,
                  size: 24, color: ColorsManager.mainGray),
              Text(
                labelType,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: ColorsManager.darkGray, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

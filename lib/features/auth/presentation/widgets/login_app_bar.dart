import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:work/core/theming/colors.dart';

import 'back_button_icon_app_bar.dart';

class LoginAppBar extends StatelessWidget {
  final int totalSteps;
  final int currentStep;

  const LoginAppBar({required this.totalSteps, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 16),
          child: StepProgressIndicator(
            totalSteps: totalSteps,
            currentStep: currentStep,
            size: 8,
            selectedColor: ColorsManager.primary,
            unselectedColor: ColorsManager.mainGray,
            roundedEdges: const Radius.circular(10),
          ),
        ),
        BackButtonIconAppBar(),
      ],
    );
  }
}

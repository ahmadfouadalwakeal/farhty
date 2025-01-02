import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:work/core/helpers/commons_func.dart';
import 'package:work/core/helpers/otp_app.dart';
import 'package:work/features/auth/presentation/screens/login/login_details.dart';

import '../../../../../core/theming/app_strings.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/elevated_button_app.dart';

class VerifyPhoneNumber extends StatelessWidget {
  const VerifyPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 16),
                    child: StepProgressIndicator(
                      totalSteps: 3,
                      currentStep: 2,
                      size: 8,
                      selectedColor: Colors.purple,
                      unselectedColor: Colors.grey.shade300,
                      roundedEdges: const Radius.circular(10),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ColorsManager.lightGray),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: ColorsManager.darkGray,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.verify,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.otp,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: ColorsManager.darkGray),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '+20 01012954858',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: ColorsManager.lightBlue),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.pen,
                        size: 20,
                        color: Colors.purple,
                      ),
                      Container(
                        width: 20,
                        height: 1.5,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              otpApp(context),
              SizedBox(
                height: 40,
              ),
              elevatedButtonApp(context,
                  text: 'verify',
                  onPressed: () =>
                      navigate(context: context, screen: LoginDetails())),
              SizedBox(
                height: 60,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'لم يصلك كود التحقق',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: ColorsManager.darkPurple, fontSize: 16),
                  )),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'اعادة ارسال الكود',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: ColorsManager.lightBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

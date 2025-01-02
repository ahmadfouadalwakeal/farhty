import 'package:flutter/material.dart';
import 'package:work/core/helpers/commons_func.dart';
import 'package:work/core/theming/app_strings.dart';
import 'package:work/core/widgets/app_text_field.dart';
import 'package:work/core/widgets/elevated_button_app.dart';
import 'package:work/core/widgets/show_account_dialog.dart';

import '../../widgets/account_type_selector.dart';
import '../../widgets/divider_with_text.dart';
import '../../widgets/login_app_bar.dart';
import '../../widgets/login_title_sub_title.dart';
import '../../widgets/social_media_icons.dart';
import '../../widgets/terms_and_conditions_check_box.dart';
import 'verify_phone_number.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  int currentStep = 1;
  final int totalSteps = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //!added LoginAppBar
                LoginAppBar(totalSteps: totalSteps, currentStep: currentStep),
                const SizedBox(height: 32),
                //!added login title
                LoginTitle(
                  title: AppStrings.login,
                  subTitle: AppStrings.subLogin,
                ),
                const SizedBox(height: 16),
                //!added type Account
                Text(AppStrings.typeAccount,
                    style: Theme.of(context).textTheme.displayMedium),
                const SizedBox(height: 16),
                //! added Account Type Selector
                AccountTypeSelector(
                  labelType: AppStrings.labelTypeAccount,
                  showAccountDialog: () => showAccountDialog(
                    context,
                    type1: AppStrings.famousAccount,
                    type2: AppStrings.googlePlayAccount,
                    type3: AppStrings.followAccount,
                  ),
                ),
                const SizedBox(height: 16),
                //! added fullName
                AppTextField(title: AppStrings.fullName),
                //! added phone Number
                AppTextField(
                    title: AppStrings.phoneNumber,
                    keyboardType: TextInputType.phone),
                const SizedBox(height: 16),
                //!user Terms And Conditions Checkbox
                TermsAndConditionsCheckbox(
                  value: value,
                  onChanged: (newValue) => setState(() => value = newValue!),
                ),
                const SizedBox(height: 32),
                //!user button login
                elevatedButtonApp(
                  text: AppStrings.login,
                  onPressed: () {
                    navigate(context: context, screen: VerifyPhoneNumber());
                  },
                  context,
                ),
                const SizedBox(height: 40),
                //!user Divider With Text
                DividerWithText(),
                //!user Social Media Icons
                SocialMediaIcons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

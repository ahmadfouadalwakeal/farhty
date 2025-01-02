import 'package:flutter/material.dart';
import 'package:work/core/helpers/commons_func.dart';
import 'package:work/core/widgets/app_text_field.dart';
import 'package:work/features/auth/presentation/screens/login/login_phone.dart';
import 'package:work/features/auth/presentation/widgets/account_type_selector.dart';
import 'package:work/features/auth/presentation/widgets/login_app_bar.dart';
import 'package:work/features/auth/presentation/widgets/login_title_sub_title.dart';
import 'package:work/features/auth/presentation/widgets/profile_image.dart';

import '../../../../../core/theming/app_strings.dart';
import '../../../../../core/widgets/elevated_button_app.dart';
import '../../../../../core/widgets/show_account_dialog.dart';

class LoginDetails extends StatelessWidget {
  const LoginDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //! added Login App Bar
              LoginAppBar(totalSteps: 3, currentStep: 3),
              SizedBox(
                height: 32,
              ),
              //! added Login Title
              LoginTitle(
                  title: AppStrings.loginDetails,
                  subTitle: AppStrings.loginSubDetails),
              SizedBox(height: 32),
              //!add Profile Image
              Align(alignment: Alignment.center, child: ProfileImage()),
              SizedBox(height: 40),
              //!add userName
              AppTextField(title: AppStrings.userName),
              //!labelTypeGender
              Text(AppStrings.labelTypeGender,
                  style: Theme.of(context).textTheme.displayMedium),
              const SizedBox(height: 16),
              //!added type gender
              AccountTypeSelector(
                labelType: AppStrings.labelTypeGender,
                showAccountDialog: () => showAccountDialog(
                  context,
                  type1: AppStrings.genderMale,
                  type2: AppStrings.ganderFemale,
                ),
              ),
              const SizedBox(height: 32),
              //!user button confirm
              elevatedButtonApp(context,
                  text: AppStrings.confirm,
                  onPressed: () =>
                      navigate(context: context, screen: LoginPhone())),
            ],
          ),
        ),
      ),
    );
  }
}

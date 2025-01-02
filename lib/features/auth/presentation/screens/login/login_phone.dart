import 'package:flutter/material.dart';
import 'package:work/core/helpers/commons_func.dart';
import 'package:work/core/theming/app_assets.dart';
import 'package:work/core/theming/colors.dart';
import 'package:work/features/auth/presentation/screens/login/login.dart';
import 'package:work/features/auth/presentation/widgets/account_type_selector.dart';
import 'package:work/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:work/features/auth/presentation/widgets/login_title_sub_title.dart';
import 'package:work/features/auth/presentation/widgets/social_media_icons.dart';
import 'package:work/features/home/presentation/widgets/bottom_navigation_bar.dart';

import '../../../../../core/theming/app_strings.dart';
import '../../../../../core/widgets/elevated_button_app.dart';
import '../../../../../core/widgets/show_account_dialog.dart';

class LoginPhone extends StatelessWidget {
  const LoginPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 120, bottom: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //! added Login App Bar
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(AppAssets.loginPhone)),
              SizedBox(
                height: 32,
              ),
              //! added Login Title
              LoginTitle(
                  title: AppStrings.login, subTitle: AppStrings.subLogin),
              SizedBox(height: 32),
              //!type phone
              AccountTypeSelector(
                labelType: AppStrings.labelPhone,
                showAccountDialog: () => showAccountDialog(
                  context,
                  type1: '+20',
                  type2: '+955',
                  type3: '+971',
                ),
              ),
              const SizedBox(height: 32),
              //!user button confirm
              elevatedButtonApp(context,
                  text: AppStrings.login,
                  onPressed: () =>
                      navigate(context: context, screen: HomeBottomNavBar())),
              //!divider
              SizedBox(
                height: 32,
              ),
              DividerWithText(),
              //!social media icons
              SocialMediaIcons(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'انشاء حساب جديد',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: ColorsManager.lightBlue, fontSize: 18),
                    ),
                  ),
                  Text(
                    'لا تمتلك حساب ؟',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

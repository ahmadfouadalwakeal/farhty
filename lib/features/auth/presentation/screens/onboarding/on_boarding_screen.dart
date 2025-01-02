import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:work/core/theming/colors.dart';
import 'package:work/features/auth/presentation/screens/login/login.dart';

import '../../../../../core/helpers/commons_func.dart';
import '../../../../../core/theming/app_strings.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../data/models/on_boarding_model.dart';

class OnBoardingScreens extends StatelessWidget {
  OnBoardingScreens({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PageView.builder(
            controller: controller,
            itemCount: OnBoardingModel.onBoardingSceens.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  //onBoarding1 image
                  Image.asset(OnBoardingModel.onBoardingSceens[index].imgPath),

                  SizedBox(
                    height: 60,
                  ),

                  //title
                  Text(
                    OnBoardingModel.onBoardingSceens[index].title,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w700, fontFamily: 'PingAR'),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //subTitle
                  Text(
                    OnBoardingModel.onBoardingSceens[index].subTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontFamily: 'PingAR',
                          color: ColorsManager.darkGray,
                        ),
                  ),
                  SizedBox(
                    height: 39,
                  ),

                  //dots
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: ColorsManager.primary,
                      // spacing: 8,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  text skip
                      index != 2
                          ? Align(
                              alignment: Alignment.centerLeft,
                              child: CustomTextButton(
                                text: AppStrings.skip,
                                onPressed: () {
                                  controller.jumpToPage(2);
                                },
                              ),
                            )
                          : SizedBox(
                              height: 54,
                            ),
                      //next button
                      index != 2
                          ? SizedBox(
                              width: MediaQuery.sizeOf(context).width * .5,
                              child: CustomButton(
                                  onPressed: () {
                                    controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.fastEaseInToSlowEaseOut);
                                  },
                                  text: AppStrings.next),
                            )
                          : SizedBox(
                              width: MediaQuery.sizeOf(context).width * .5,
                              child: CustomButton(
                                  onPressed: () {
                                    // navigate to home screen
                                    navigate(
                                      context: context,
                                      screen: LoginScreen(),
                                    );
                                  },
                                  text: AppStrings.getStarted),
                            ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

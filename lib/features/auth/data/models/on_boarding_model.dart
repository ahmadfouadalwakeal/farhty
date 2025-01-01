import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_strings.dart';

class OnBoardingModel {
  final String imgPath;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imgPath, required this.title, required this.subTitle});
  static List<OnBoardingModel> onBoardingSceens = [
    OnBoardingModel(
        imgPath: AppAssets.b1,
        title: AppStrings.onBoardingTitleOne,
        subTitle: AppStrings.onBoardingSubTitleOne),
    OnBoardingModel(
        imgPath: AppAssets.b2,
        title: AppStrings.onBoardingTitleTwo,
        subTitle: AppStrings.onBoardingSubTitleTwo),
    OnBoardingModel(
        imgPath: AppAssets.b3,
        title: AppStrings.onBoardingTitleThree,
        subTitle: AppStrings.onBoardingSubTitleThree),
  ];
}

import 'package:work/core/theming/app_assets.dart';
import 'package:work/core/theming/app_strings.dart';
import 'package:work/features/home/data/models/carousel_model.dart';

abstract class HomeCarouselDataSource {
  List<HomeCarouselModel> getHomeCarousel();
}

class HomeCarouselDataSourceImpl extends HomeCarouselDataSource {
  @override
  List<HomeCarouselModel> getHomeCarousel() {
    return [
      HomeCarouselModel(
        AppStrings.name,
        AppAssets.user,
        AppStrings.description,
        AppStrings.period,
        AppAssets.offer,
      ),
      HomeCarouselModel(
        AppStrings.name,
        AppAssets.user,
        AppStrings.description,
        AppStrings.period,
        AppAssets.offer,
      ),
      HomeCarouselModel(
        AppStrings.name,
        AppAssets.user,
        AppStrings.description,
        AppStrings.period,
        AppAssets.offer,
      ),
      HomeCarouselModel(
        AppStrings.name,
        AppAssets.user,
        AppStrings.description,
        AppStrings.period,
        AppAssets.offer,
      ),
      HomeCarouselModel(
        AppStrings.name,
        AppAssets.user,
        AppStrings.description,
        AppStrings.period,
        AppAssets.offer,
      ),
      HomeCarouselModel(
        AppStrings.name,
        AppAssets.user,
        AppStrings.description,
        AppStrings.period,
        AppAssets.offer,
      ),
    ];
  }
}

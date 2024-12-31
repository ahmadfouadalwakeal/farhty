import '../../domain/repo/home_carousel_repo.dart';
import '../data_source/home_carousel_data_source.dart';
import '../models/carousel_model.dart';

class HomeCarouselRepoImpl extends HomeCarouselRepo {
  final HomeCarouselDataSource _homeCarouselDataSource;

  HomeCarouselRepoImpl(this._homeCarouselDataSource);
  @override
  Future<List<HomeCarouselModel>> fetchHomeCarousel() async {
    final items = _homeCarouselDataSource.getHomeCarousel();
    return items
        .map((items) => HomeCarouselModel(
              items.userName,
              items.userImage,
              items.description,
              items.period,
              items.carouselImage,
            ))
        .toList();
  }
}

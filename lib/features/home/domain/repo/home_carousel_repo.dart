import '../../data/models/carousel_model.dart';

abstract class HomeCarouselRepo {
  Future<List<HomeCarouselModel>> fetchHomeCarousel();
}

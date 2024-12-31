import 'package:work/features/home/data/models/carousel_model.dart';
import 'package:work/features/home/domain/repo/home_carousel_repo.dart';

class HomeCarouselUseCase {
  final HomeCarouselRepo _homeCarouselRepo;

  HomeCarouselUseCase(this._homeCarouselRepo);

  Future<List<HomeCarouselModel>> callCarousel() {
    return _homeCarouselRepo.fetchHomeCarousel();
  }
}

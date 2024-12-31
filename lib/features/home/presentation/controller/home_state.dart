import 'package:work/features/home/data/models/carousel_model.dart';
import 'package:work/features/home/data/models/home_models.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<HomeModel> homeList;

  HomeLoadedState(this.homeList);
}

class HomeCarouselLoadedState extends HomeState {
  final List<HomeCarouselModel> homeCarouselList;

  HomeCarouselLoadedState(this.homeCarouselList);
}

class HomeErrorState extends HomeState {
  final String message;

  HomeErrorState(this.message);
}

class HomeSliderChangeState extends HomeState {
  final int currentIndex;

  HomeSliderChangeState(this.currentIndex);
}

class HomeBottomNavBarChangeState extends HomeState {
  final int selectedIndex;

  HomeBottomNavBarChangeState(this.selectedIndex);
}

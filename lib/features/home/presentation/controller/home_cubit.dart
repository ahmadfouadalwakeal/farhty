import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work/features/home/domain/usecase/home_carousel_usecase.dart';
import 'package:work/features/home/presentation/controller/home_state.dart';

import '../../domain/usecase/home_use_case.dart';
import '../screens/home_screen.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;
  final HomeCarouselUseCase _homeCarouselUseCase;

  int currentIndex = 0;
  int selectedIndex = 4;
  HomeCubit(this._homeUseCase, this._homeCarouselUseCase)
      : super(HomeInitialState());

//! List pages of bottom nav bar
  static final List<Widget> pages = [
    Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Notification Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Chat Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Comp Page', style: TextStyle(fontSize: 24))),
    HomeScreen(),
  ];

  //! getHomeImages
  Future<void> getHomeImages() async {
    try {
      emit(HomeLoadingState());
      final images = await _homeUseCase.call();
      emit(HomeLoadedState(images));
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }

//! getHomeCarousel
  Future<void> getHomeCarousel() async {
    try {
      emit(HomeLoadingState());
      final carouselItem = await _homeCarouselUseCase.callCarousel();
      emit(HomeCarouselLoadedState(carouselItem));
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }

  //! changeSlider
  void changeSlider(int index) {
    currentIndex = index;

    emit(HomeSliderChangeState(currentIndex));
  }

  //! changeBottomNav
  void changeBottomNav(int index) {
    selectedIndex = index;
    emit(HomeBottomNavBarChangeState(selectedIndex));
  }
}

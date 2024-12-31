import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/colors.dart';
import '../../data/models/home_models.dart';
import '../controller/home_cubit.dart';
import '../controller/home_state.dart';
import 'home_carousel_slider.dart';

class HomeSliderComponent extends StatelessWidget {
  final List<HomeModel> imageList;

  const HomeSliderComponent({Key? key, required this.imageList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = sl<HomeCubit>();
        return Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    child:
                        HomeCarouselSlider(imageList: imageList, cubit: cubit),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: context.read<HomeCubit>().currentIndex,
                  count: imageList.length,
                  effect: WormEffect(
                    dotWidth: 6,
                    dotHeight: 6,
                    spacing: 5,
                    dotColor: ColorsManager.mainGray,
                    activeDotColor: ColorsManager.darkPurple,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

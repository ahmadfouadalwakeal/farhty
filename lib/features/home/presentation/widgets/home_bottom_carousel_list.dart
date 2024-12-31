import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/core/theming/colors.dart';
import 'package:work/features/home/presentation/controller/home_cubit.dart';
import 'package:work/features/home/presentation/controller/home_state.dart';

class HomeBottomCarouselList extends StatelessWidget {
  const HomeBottomCarouselList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is HomeErrorState) {
          return Center(child: Text('Error: ${state.message}'));
        } else if (state is HomeCarouselLoadedState) {
          final carouselItems = state.homeCarouselList;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              child: ListView.builder(
                itemCount: carouselItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Builder(builder: (context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child:
                                  Image.asset(carouselItems[index].userImage),
                            ),
                            Column(
                              children: [
                                Text(
                                  carouselItems[index].userName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        color: ColorsManager.moreDarkPurple,
                                        fontSize: 16,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 6),
                                  child: Row(
                                    spacing: 3,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.solidClock,
                                        size: 15,
                                        color: ColorsManager.mainGray,
                                      ),
                                      Text(
                                        carouselItems[index].period,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                              color: ColorsManager.mainGray,
                                              fontSize: 16,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(carouselItems[index].description),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * .3,
                            width: MediaQuery.sizeOf(context).width * .77,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              carouselItems[index].carouselImage,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    );
                  });
                },
              ),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}

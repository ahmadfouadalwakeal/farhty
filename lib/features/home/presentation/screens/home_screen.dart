import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work/features/home/presentation/controller/home_cubit.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/app_strings.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/home_body_titles.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_bottom_carousel_list.dart';
import '../widgets/home_icons_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 16, 24),
                child: Align(
                  alignment: Alignment.topRight,
                  child: HomeBodyTitles(
                    title: AppStrings.platforms,
                  ),
                ),
              ),
              HomeIconGridView(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 32, left: 16, right: 16, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeBodyTitles(
                      title: AppStrings.viewAll,
                      color: ColorsManager.lightBlue,
                    ),
                    HomeBodyTitles(
                      title: AppStrings.famousCompetitions,
                    )
                  ],
                ),
              ),
              BlocProvider(
                create: (context) => sl<HomeCubit>()..getHomeCarousel(),
                child: HomeBottomCarouselList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

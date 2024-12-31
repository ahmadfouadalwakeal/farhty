import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/core/theming/app_assets.dart';
import 'package:work/features/home/presentation/controller/home_cubit.dart';
import 'package:work/features/home/presentation/controller/home_state.dart';
import 'package:work/features/home/presentation/widgets/home_app_bar_slider_component.dart';
import 'package:work/features/home/presentation/widgets/home_app_bar_title.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/theming/colors.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl<HomeCubit>()..getHomeImages(),
      child: SliverAppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.mainDarkPurple,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: ColorsManager.mainWhite,
                size: 16,
              ),
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.bottomRight,
          child: HomeAppBarTitle(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 25,
              child: Image.asset(
                AppAssets.user,
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
        centerTitle: false,
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.12,
        pinned: true,
        expandedHeight: MediaQuery.sizeOf(context).height * 0.29,
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Container(
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 11),
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoadingState) {
                      return const CircularProgressIndicator();
                    } else if (state is HomeLoadedState) {
                      return GestureDetector(
                        onTap: () {},
                        child: HomeSliderComponent(imageList: state.homeList),
                      );
                    } else if (state is HomeErrorState) {
                      return Text(
                        state.message,
                        style: const TextStyle(color: Colors.red),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/models/home_models.dart';
import '../controller/home_cubit.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({
    super.key,
    required this.imageList,
    required this.cubit,
  });

  final List<HomeModel> imageList;
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageList.map((image) {
        return Builder(
          builder: (context) => GestureDetector(
            onTap: () {},
            child: Image.asset(
              image.imagePath,
              fit: BoxFit.fill,
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        height: MediaQuery.of(context).size.height * 0.16,
        onPageChanged: (index, reason) {
          cubit.changeSlider(index);
        },
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
      ),
    );
  }
}

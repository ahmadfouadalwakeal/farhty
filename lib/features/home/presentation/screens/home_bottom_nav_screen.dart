import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work/features/home/presentation/controller/home_cubit.dart';
import 'package:work/features/home/presentation/controller/home_state.dart';

import '../widgets/bottom_navigation_bar.dart';

class HomeBottomNavScreen extends StatelessWidget {
  const HomeBottomNavScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return HomeBottomNavBar();
      },
    );
  }
}

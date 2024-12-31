import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work/features/home/presentation/controller/home_cubit.dart';

import 'app/app.dart';
import 'core/di/service_locator.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  runApp(BlocProvider<HomeCubit>(
    create: (context) => sl<HomeCubit>()
      ..getHomeImages()
      ..getHomeCarousel(),
    child: MyApp(
      appRouter: AppRouter(),
    ),
  ));
}

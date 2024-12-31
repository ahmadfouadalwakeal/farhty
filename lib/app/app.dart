import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work/core/di/service_locator.dart';
import 'package:work/features/home/presentation/screens/home_bottom_nav_screen.dart';

import '../core/routing/app_router.dart';
import '../core/routing/routes.dart';
import '../features/home/presentation/controller/home_cubit.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl<HomeCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeBottomNavScreen(),
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

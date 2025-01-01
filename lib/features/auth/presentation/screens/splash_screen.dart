import 'package:flutter/material.dart';

import '../../../../core/theming/app_assets.dart';
import 'on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OnBoardingScreens()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AppAssets.sp1,
              width: MediaQuery.sizeOf(context).width * 0.45,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Image.asset(
              AppAssets.logo,
              width: MediaQuery.sizeOf(context).width * 0.5,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.sp2,
              width: MediaQuery.sizeOf(context).width * 0.45,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:work/core/theming/colors.dart';

ThemeData getAppLightTheme() {
  return ThemeData(
    primaryColor: ColorsManager.primary,
    // scaffoldBackgroundColor
    scaffoldBackgroundColor: ColorsManager.mainWhite,
    //appBarTheme
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsManager.mainWhite,
      centerTitle: true,
    ),
    //text theme
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: ColorsManager.darkPurple,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
      displayMedium: TextStyle(
        color: ColorsManager.darkPurple,
        fontSize: 20,
      ),
      displaySmall: TextStyle(
        color: ColorsManager.darkGray,
        fontSize: 14,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      //enabled border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      //focusedBorder
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      //hint text
      hintStyle: TextStyle(
        color: ColorsManager.mainWhite,
        fontSize: 16,
      ),
      //fill color
      fillColor: ColorsManager.mainWhite,
      filled: true,
    ),
  );
}

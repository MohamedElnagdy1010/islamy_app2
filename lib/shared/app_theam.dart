import 'package:flutter/material.dart';
import 'package:islamy_app2/shared/app_colors.dart';


class AppTheme {
  static final ThemeData appTheam = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.goldColor),
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.goldColor,
      titleTextStyle: TextStyle(
        color: AppColors.goldColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppColors.goldColor),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.goldColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.blackColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme{
  static const TextStyle appBarTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle taskTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,fontSize: 22 , color:  AppColors.primary
  );

  static const TextStyle taskDescriptionTextStyle = TextStyle(
    fontSize: 14 , fontWeight: FontWeight.bold , color: AppColors.lightBlack
  );

  static const TextStyle  bottomSheetTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold , fontSize: 20 ,color: AppColors.black
  );

  static ThemeData lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary
    ),
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
      titleTextStyle: appBarTextStyle,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grey
    ),
    scaffoldBackgroundColor: AppColors.accent,
    dividerTheme: const DividerThemeData(thickness: 3, color: AppColors.primary),
  );

  static ThemeData darkTheme = ThemeData();
}
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(AppColors.kPrimary),
    scaffoldBackgroundColor: const Color(AppColors.kBackground),
    cardColor: const Color(AppColors.kSurface),
    textTheme: const TextTheme(
      bodyLarge: const TextStyle(fontSize: 18, color: Color(AppColors.kText)),
      titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(AppColors.kText)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: const Color(AppColors.kPrimary),
      unselectedItemColor: const Color(AppColors.kText),
      selectedLabelStyle: TextStyle(fontSize: 14),
      unselectedLabelStyle: TextStyle(fontSize: 14),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

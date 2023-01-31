import 'package:car_sale_app/theme/constants.dart';
import 'package:flutter/material.dart';

ThemeData setTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: AppColors.grey,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      elevation: 0,
      toolbarHeight: 78,
      iconTheme: IconThemeData(color: AppColors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(20),
      hintStyle: const TextStyle(
        color: Color.fromRGBO(156, 163, 175, 1),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(14),
      ),
      fillColor: AppColors.lightnessGrey,
      filled: true,
      suffixIconColor: AppColors.black,
    ),
  );
}

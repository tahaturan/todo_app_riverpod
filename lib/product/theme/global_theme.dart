import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';

class GlobalTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ProjectColor.scaffoldBackgroundColor.color(),
    appBarTheme: AppBarTheme(backgroundColor: ProjectColor.karmaChameleon.color(), elevation: 0),
    textTheme: const TextTheme(headline3: TextStyle(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.red),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ProjectColor.sumptuousPurble.color(), splashColor: ProjectColor.blueDam.color()),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      iconColor: ProjectColor.blueDam.color(),
      focusColor: Colors.white,
      fillColor: ProjectColor.karmaChameleon.color(),
    ),
  );
}

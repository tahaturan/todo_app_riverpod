import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';

class GlobalTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ProjectColor.scaffoldBackgroundColor.color(),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    textTheme: const TextTheme(headline3: TextStyle(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.red),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ProjectColor.sumptuousPurble.color(), splashColor: ProjectColor.blueDam.color()),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      iconColor: ProjectColor.scaffoldBackgroundColor.color(),
      focusColor: Colors.white,
      fillColor: ProjectColor.karmaChameleon.color(),
    ),
  );
}

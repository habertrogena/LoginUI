import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
        50: Color(0X1AFFE200),
        100: Color(0X33FFE200),
      }));
  static ThemeData darkTheme = ThemeData();
}

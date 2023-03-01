import 'package:flutter/material.dart';
import 'package:loginui/src/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: tSecondaryColor),
    ),
  );
}

//dark theme

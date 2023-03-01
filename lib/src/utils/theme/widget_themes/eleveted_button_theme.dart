// eleveted button theme data
import 'package:flutter/material.dart';
import 'package:loginui/src/constants/colors.dart';
import 'package:loginui/src/constants/sizes.dart';

final lightElevetedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: tWhiteColor,
    backgroundColor: tSecondaryColor,
    side: const BorderSide(color: tSecondaryColor),
    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
);

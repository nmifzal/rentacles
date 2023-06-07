import 'package:flutter/material.dart';
import 'package:rentacles/themes/colors/colors.constant.dart';

class AppTheme {
  // this will prevent creating instance for this class
  AppTheme._();

  // Light theme
  static ThemeData lightTheme =
      ThemeData(brightness: Brightness.light, primarySwatch: appColors);

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    primarySwatch: appColors,
    brightness: Brightness.dark,
  );
}

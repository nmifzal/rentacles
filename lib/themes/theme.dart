import 'package:flutter/material.dart';
import 'package:rentacles/themes/colors/colors.constant.dart';
import 'package:rentacles/themes/widget_themes/elevated_btn_theme.dart';
import 'package:rentacles/themes/widget_themes/text_theme.dart';

class AppTheme {
  // making class private
  AppTheme._();

  // Light theme
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: appColors,
      primaryColor: appColors.shade100);

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    primarySwatch: appColors,
    brightness: Brightness.dark,
  );
}

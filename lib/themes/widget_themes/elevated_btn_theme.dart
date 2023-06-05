import 'package:flutter/material.dart';
import 'package:rentacles/themes/colors/colors.constant.dart';

class ElevatedBtnTheme {
  static ElevatedButtonThemeData elevatedBtnTheme = ElevatedButtonThemeData(
      style: ButtonStyle(
          splashFactory: InkSparkle.splashFactory,
          backgroundColor:
              MaterialStatePropertyAll<Color>(appColors.shade500)));
}

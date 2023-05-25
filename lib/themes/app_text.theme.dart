import 'package:flutter/cupertino.dart';
import 'package:rentacles/themes/colors.theme.dart';

TextStyle poppinsRegular({
  Color color = ThemeColor.primaryBlack,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  String fontFamily = 'Poppins',
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

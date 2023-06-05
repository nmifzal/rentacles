import 'package:flutter/material.dart';

const MaterialColor appColors = MaterialColor(primary, <int, Color>{
  50: Color(0xFFFFEAEA),
  100: Color(0xFFFFCBCB),
  200: Color(0xFFFFA9A9),
  300: Color(0xFFFF8686),
  400: Color(0xFFFF6C6C),
  500: Color(primary),
  600: Color(0xFFFF4B4B),
  700: Color(0xFFFF4141),
  800: Color(0xFFFF3838),
  900: Color(0xFFFF2828),
});
const int primary = 0xFFFF5252;

const MaterialColor primaryAccent =
    MaterialColor(primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(primaryAccentValue),
  400: Color(0xFFFFD5D5),
  700: Color(0xFFFFBCBC),
});
const int primaryAccentValue = 0xFFFFFFFF;

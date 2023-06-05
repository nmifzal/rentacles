import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge:
          GoogleFonts.dmSans(fontWeight: FontWeight.w900, color: Colors.black));
  static TextTheme darkTextTheme =
      TextTheme(displayLarge: GoogleFonts.dmSans(fontWeight: FontWeight.w900));
}

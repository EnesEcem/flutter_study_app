import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

mixin SubThemeData {
  getTextTheme() {
    GoogleFonts.quicksandTextTheme(
      TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  IconThemeData getIconTheme() {
    return IconThemeData(color: onSurfaceTextColor, size: 16);
  }
}

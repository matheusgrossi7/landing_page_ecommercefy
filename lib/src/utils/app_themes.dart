import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final ThemeData _light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFf6f5ff),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFff914d),
      secondary: Color(0xFF9dd9d2),
    ),
  );

  static final TextStyle _poppinsTextStyle = GoogleFonts.poppins().copyWith(
    color: Colors.grey[800],
  );

  static final ThemeData light = _light.copyWith(
    textTheme: GoogleFonts.montserratTextTheme(_light.textTheme).copyWith(
      displayLarge: _poppinsTextStyle,
      displayMedium: _poppinsTextStyle,
    ),
  );
}

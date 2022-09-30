import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final ThemeData _light = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFff914d),
    ),
  );

  static ThemeData light = _light.copyWith(
    textTheme: GoogleFonts.montserratTextTheme(_light.textTheme),
  );
}

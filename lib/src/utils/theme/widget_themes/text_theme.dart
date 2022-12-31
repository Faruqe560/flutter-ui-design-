import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TexTTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(
      color: Colors.black,
    ),
    subtitle2: GoogleFonts.poppins(
      color: Colors.black,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(
      color: Colors.white,
    ),
    subtitle2: GoogleFonts.poppins(
      color: Colors.white,
    ),
  );
}

import 'package:crud_api/src/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TexTTheme.lightTextTheme,
      colorScheme: ColorScheme.light());
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TexTTheme.darkTextTheme,
      colorScheme: ColorScheme.dark());
}

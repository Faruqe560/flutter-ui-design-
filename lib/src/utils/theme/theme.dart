import 'package:crud_api/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:crud_api/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:crud_api/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TexTTheme.lightTextTheme,
      // colorScheme: ColorScheme.light(),
      outlinedButtonTheme: OutLinedButtonTheme.lightOutLineButtonTheme,
      elevatedButtonTheme: ElevatedButtonThemes.lightElevatedButtonTheme);
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TexTTheme.darkTextTheme,
    //colorScheme: ColorScheme.dark(),
    outlinedButtonTheme: OutLinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: ElevatedButtonThemes.darkElevatedButtonTheme,
  );
}

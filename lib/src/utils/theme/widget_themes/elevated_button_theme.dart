import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

// light and dark elevated button themes

class ElevatedButtonThemes {
  ElevatedButtonThemes._();
  // light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: whiteColor,
      backgroundColor: secoundaryColor,
      side: BorderSide(color: secoundaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  // dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: secoundaryColor,
      backgroundColor: whiteColor,
      side: BorderSide(color: secoundaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}

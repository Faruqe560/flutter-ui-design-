import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

// light & dark outlined button themes
class OutLinedButtonTheme {
  OutLinedButtonTheme._();

  // light theme
  static final lightOutLineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: secoundaryColor,
      side: BorderSide(color: secoundaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  // dark theme

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: whiteColor,
      side: BorderSide(color: whiteColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}

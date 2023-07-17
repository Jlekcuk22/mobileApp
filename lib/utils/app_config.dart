import 'package:flutter/material.dart';

class AppConfig {
  // Fonts
  static const String fontFamily = 'Open Sans';
  static const defaultFontSize = 16.0;

  // Colors
  static const Color primaryColor = Color(0xFF013252);
  static const Color secondaryColor = Color(0xFFD92121);
  static const Color navbarIconsColor = Color(0xFFB2B2D8);
  static const Color gray = Color(0xFFE5E7EB);
  static const Color gray50 = Color(0xFFF3F4F6);
  static const Color gray100 = Color(0xFF9CA3AF);
  static const Color gray800 = Color(0xFF1F2937);

  static MaterialColor getPrimarySwatch() {
    return MaterialColor(primaryColor.value, {
      50: primaryColor.withOpacity(0.1),
      100: primaryColor.withOpacity(0.2),
      200: primaryColor.withOpacity(0.3),
      300: primaryColor.withOpacity(0.4),
      400: primaryColor.withOpacity(0.5),
      500: primaryColor.withOpacity(0.6),
      600: primaryColor.withOpacity(0.7),
      700: primaryColor.withOpacity(0.8),
      800: primaryColor.withOpacity(0.9),
      900: primaryColor.withOpacity(1.0),
    });
  }

  // Text Styles
  // static const TextStyle headingTextStyle = TextStyle(
  //   fontSize: 24,
  //   fontWeight: FontWeight.bold,
  // );

  // Padding/Margin
  // static const double defaultPadding = 16.0;
  // static const EdgeInsets defaultMargin = EdgeInsets.all(8.0);
}

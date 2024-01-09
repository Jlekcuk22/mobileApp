import 'package:flutter/material.dart';

class AppConfig {
  // Fonts
  static const String fontFamily = 'Open Sans';
  static const defaultFontSize = 16.0;

  // Colors
  static const Color primaryColor = Color(0xFF013252);
  static const Color secondaryColor = Color(0xFFD92121);
  static const Color navbarIconsColor = Color(0xFFB2B2D8);
  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray800 = Color(0xFF1F2937);
  static const Color gray900 = Color(0xFF111827);
  static const Color jade500 = Color(0xFF43A194);
  static const Color lightblue500 = Color(0xFF7CB2D3);
  static const Color sapphireBlue500 = Color(0xFF135B7E);
  static const Color darkBlue800 = Color(0xFF0C4A72);



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

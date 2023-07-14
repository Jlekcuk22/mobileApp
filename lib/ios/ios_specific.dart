import 'package:flutter/services.dart';

void setIOSStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarBrightness: Brightness.dark,
    ),
  );
}
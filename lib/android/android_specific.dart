import 'package:flutter/services.dart';

void setAndroidStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarBrightness: Brightness.dark,
    ),
  );
}

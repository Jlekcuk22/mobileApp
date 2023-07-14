import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ultraapp/ios/ios_specific.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'android/android_specific.dart';

void main() {
  runApp(const Ultra());

  // Set status bar color based on platform
  if (Platform.isAndroid) {
    setAndroidStatusBarColor(
        AppConfig.primaryColor); // Set desired color for Android
  } else if (Platform.isIOS) {
    setIOSStatusBarColor(Colors.white); // Set desired color for iOS
  }
}

class Ultra extends StatelessWidget {
  const Ultra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ultra Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ro'), // Romanian
        Locale('ru') // Russian
      ],
      theme: ThemeData(
        primaryColor: AppConfig.primaryColor,
        primarySwatch: AppConfig.getPrimarySwatch(),
        fontFamily: AppConfig.fontFamily,
      ),
      home: const Scaffold(
        body: MainScreen(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

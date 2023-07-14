import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';

void main() {
  runApp(const Ultra());
}

class Ultra extends StatelessWidget {
  const Ultra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Ultra Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: AppConfig.fontFamily,
      ),
      home: const Scaffold(
        body: MainScreen(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

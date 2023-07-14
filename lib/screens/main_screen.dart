import 'package:flutter/material.dart';
import 'package:ultraapp/widgets/header.dart';
import 'package:ultraapp/widgets/home_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 60,
            child: Container(
              color:
                  const Color(0xFF013252), // Set the background color to blue
            ),
          ),
          const SafeArea(
            child: Column(
              children: [
                Header(),
                Expanded(
                  child: MyHomePage(title: 'Flutter Demo Home Page'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

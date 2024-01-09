// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/cart.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/utils/app_config.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final whiteCursorTheme = ThemeData(
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.white),
    );

    return Container(
      color: AppConfig.primaryColor,
      padding: const EdgeInsets.fromLTRB(13, 50, 13, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ));
                  },
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: 123,
                    height: 22,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppConfig.darkBlue800,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: AppConfig.sapphireBlue500, width: 1.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SvgPicture.asset(
                          'assets/icons/search.svg',
                          width: 28,
                          height: 28,
                          color: AppConfig.lightblue500,
                        ),
                      ),
                      Expanded(
                        child: Theme(
                          data: whiteCursorTheme,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              hintText: 'Искать товары',
                              hintStyle:
                                  TextStyle(color: AppConfig.lightblue500),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                child: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  width: 28,
                  height: 28,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

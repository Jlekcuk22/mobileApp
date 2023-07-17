import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg', // Replace with your logo file path
                  width: 123,
                  height: 22,
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
                    color: const Color(
                        0xFF0C4A72), // Replace with your desired background color
                    borderRadius: BorderRadius.circular(4),
                    border:
                        Border.all(color: const Color(0xFF135B7E), width: 1.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: SvgPicture.asset(
                          'assets/icons/search.svg', // Replace with your search icon file path
                          width: 28,
                          height: 28,
                          color: const Color(
                              0xFF7CB2D3), // Replace with your desired icon color
                        ),
                      ),
                      Expanded(
                        child: Theme(
                          data: whiteCursorTheme,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText:
                                  'Search...', // Replace with your desired hintText
                              hintStyle: TextStyle(
                                  color: Color(
                                      0xFF7CB2D3)), // Replace with your desired placeholder color
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
              SvgPicture.asset(
                'assets/icons/cart.svg', // Replace with your cart icon file path
                width: 28,
                height: 28,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

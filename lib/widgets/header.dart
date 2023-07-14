import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF013252),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg', // Replace with your SVG file path
                width: 123,
                height: 22,
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/phone.svg',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(
                'assets/icons/user.svg',
                width: 28,
                height: 28,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

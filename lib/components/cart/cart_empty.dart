import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/header_widger.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Header(),
          SizedBox(
            width: double.infinity,
            height: 82,
            child: Stack(
              children: [
                Positioned.fill(
                  top: 20,
                  left: 0,
                  child: SvgPicture.asset(
                    'assets/icons/cart_bg.svg',
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Корзина',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppConfig.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          SvgPicture.asset(
            'assets/icons/cart_empty.svg',
            width: 375,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 40),
          const Text(
            'Ваша корзина пуста',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppConfig.primaryColor),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 65),
                backgroundColor: AppConfig.secondaryColor),
            child: const Text(
              'Продолжить покупки',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

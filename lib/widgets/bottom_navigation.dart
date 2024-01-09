// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/category_modal_screen.dart';
import 'package:ultraapp/screens/favorite.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/screens/promo.dart';
import 'package:ultraapp/screens/succes_purchase.dart';
import 'package:ultraapp/utils/app_config.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0; // Индекс текущей выбранной иконки

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConfig.primaryColor,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppConfig.primaryColor,
        currentIndex: currentIndex, // Установите текущий индекс
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 28,
              height: 28,
              color: currentIndex == 0
                  ? Colors.white
                  : AppConfig.navbarIconsColor, // Белый цвет при активации
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/offers.svg',
              width: 48,
              height: 48,
              color: currentIndex == 1
                  ? Colors.white
                  : AppConfig.navbarIconsColor, // Белый цвет при активации
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/catalog.svg',
              width: 28,
              height: 28,
              color: currentIndex == 2
                  ? Colors.white
                  : AppConfig.navbarIconsColor, // Белый цвет при активации
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/favorite.svg',
              width: 28,
              height: 28,
              color: currentIndex == 3
                  ? Colors.white
                  : AppConfig.navbarIconsColor, // Белый цвет при активации
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/phone.svg',
              width: 28,
              height: 28,
              color: currentIndex == 4
                  ? Colors.white
                  : AppConfig.navbarIconsColor, // Белый цвет при активации
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index; // Обновите текущий индекс при клике
          });

          // Обработка навигации остается неизменной
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PromoScreen()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CategoryModalWidget()),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FavoriteScreen()),
            );
          }
          if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PurchaseSuccessScreen()),
            );
          }
        },
      ),
    );
  }
}

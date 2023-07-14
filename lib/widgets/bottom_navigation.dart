import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../modals/search_modal.dart';
import '../utils/app_config.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConfig.primaryColor,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppConfig.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 28,
              height: 28,
              color: AppConfig.navbarIconsColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/offers.svg',
              width: 48,
              height: 48,
              color: AppConfig.navbarIconsColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/catalog.svg',
              width: 28,
              height: 28,
              color: AppConfig.navbarIconsColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              width: 28,
              height: 28,
              color: AppConfig.navbarIconsColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 28,
              height: 28,
              color: AppConfig.navbarIconsColor,
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          if (index == 4) {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return const FractionallySizedBox(
                  heightFactor: 0.8,
                  child: SearchModal(),
                );
              },
            );
          }
        },
      ),
    );
  }
}

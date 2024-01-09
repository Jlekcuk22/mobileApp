// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/header_widger.dart';
import 'package:ultraapp/widgets/home/offer_product_card.dart';
import '../widgets/bottom_navigation.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key); // Исправлен конструктор
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty // Добавлен оператор return
        ? Scaffold(
            body: Stack(
              children: [
                Positioned.fill(
                  top: -110,
                  left: -650,
                  child: Transform.rotate(
                    angle: 130 * (3.141592653589793238 / 180),
                    child: SvgPicture.asset(
                      'assets/icons/bg_pattern.svg',
                      width: 1788,
                      height: 1345,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Header(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 13, 16, 51),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Избранное',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: AppConfig.gray800,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: OfferProductCard(),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: OfferProductCard(),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: OfferProductCard(),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: OfferProductCard(),
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppConfig.secondaryColor,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 24),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 0,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/cart.svg',
                                      // ignore: deprecated_member_use
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      'Продолжить покупки',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            bottomNavigationBar: const BottomNavigation(),
          )
        : Scaffold(
            body: Column(
              children: [
                const Header(), // Исправлено имя виджета
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 13, 16, 51),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Избранное',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: AppConfig.gray800,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 37),
                          Column(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/favorite_empty.svg'),
                            ],
                          ),
                          const SizedBox(height: 47),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Text(
                                  'В избранном пока нет товара',
                                  style: TextStyle(
                                    color: AppConfig.gray800,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 17),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: <InlineSpan>[
                                      const TextSpan(
                                        text: 'Жмите на  ',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: AppConfig.gray700,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: AppConfig.gray100,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 9),
                                          child: SvgPicture.asset(
                                            'assets/icons/favorite.svg',
                                            // ignore: deprecated_member_use
                                            color: AppConfig.gray400,
                                          ),
                                        ),
                                      ),
                                      const TextSpan(
                                        text:
                                            '  и добавляете товар, который вам нравится.',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: AppConfig.gray700,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 28,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppConfig.secondaryColor,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 0,
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Продолжить покупки',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const BottomNavigation(),
          );
  }
}

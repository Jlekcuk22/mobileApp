import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ultraapp/components/cart/cart_product_item.dart';
import 'package:ultraapp/components/cart/total_cart.dart';

import '../utils/app_config.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/header_widger.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  children: [
                        Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 82,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    top: 5,
                                    left: -110,
                                    child: SvgPicture.asset(
                                      'assets/icons/cart_bg.svg',
                                      width: 270,
                                      height: 82,
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Корзина',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: AppConfig.gray800,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            ProductItem(
                              imageAsset: 'assets/images/wash.png',
                              productName:
                                  'Беспроводные наушники Sony WH-1000XM4',
                              badgeWidget: Stack(
                                children: [
                                  Image.asset('assets/images/badge_0.png'),
                                  Positioned.fill(
                                    left: 30,
                                    top: -1,
                                    child: Center(
                                      child: RichText(
                                        text: const TextSpan(
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: AppConfig.primaryColor,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '24',
                                            ),
                                            TextSpan(
                                              text: ' месяца',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppConfig.primaryColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              discountText: 'Скидка -15%',
                              price: '2 499',
                            ),
                            const SizedBox(height: 15),
                            ProductItem(
                              imageAsset: 'assets/images/iphone.png',
                              productName:
                                  'Смартфон Samsung Galaxy Fold 5, 12Гб/1Тб, Бежевый',
                              badgeWidget: Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppConfig.secondaryColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SvgPicture.asset(
                                          'assets/icons/discount.svg'),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'Скидка -25%',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              discountText: 'Скидка -25%',
                              price: '13 999',
                              originalPrice: '15 999',
                            ),
                            const SizedBox(height: 15),
                            ProductItem(
                              imageAsset: 'assets/images/iphone.png',
                              productName:
                                  'Смартфон Samsung Galaxy Fold 5, 12Гб/1Тб, Бежевый',
                              badgeWidget: Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppConfig.secondaryColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SvgPicture.asset(
                                          'assets/icons/back-arrow.svg'),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'Скидка -25%',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              discountText: 'Скидка -25%',
                              price: '13 999',
                              // originalPrice: '15 999',
                              showBadge: false,
                            ),
                            const SizedBox(height: 52),
                            const OrderTotal()
                          ],
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ultraapp/components/pagination/pagination.dart';
import 'package:ultraapp/components/promos/custom_flip_clock.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';
import 'package:ultraapp/widgets/home/offer_product_card.dart';
import 'category_card.dart';

class PromoCategories extends StatelessWidget {
  PromoCategories({Key? key, required String imageUrl}) : super(key: key);
  final DateTime countdownDate = DateTime.now().add(const Duration(days: 5));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                SizedBox(
                  height: 231,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/promo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                PromoCountdownClock(
                  countdown: countdownDate,
                  hideDays: false,
                  darkMode: false,
                ),
                const SizedBox(height: 42),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CategoryCard(
                            title: "Мелкая ",
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 6),
                          CategoryCard(
                            title: "Мелкая техника для кухни",
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CategoryCard(
                            title: "Мелкая ",
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 6),
                          CategoryCard(
                            title: "Мелкая техника для кухни",
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CategoryCard(
                            title: "Мелкая ",
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 6),
                          CategoryCard(
                            title: "Мелкая техника для кухни",
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CategoryCard(
                            title: "Мелкая ",
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 6),
                          CategoryCard(
                            title: "Мелкая техника для кухни",
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: OfferProductCard(),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: OfferProductCard(),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: OfferProductCard(),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: OfferProductCard(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 46),
                      Pagination(
                        totalPages: 5,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 52),
              ]),
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

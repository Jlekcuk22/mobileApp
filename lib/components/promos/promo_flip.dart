import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/components/promos/custom_flip_clock.dart';
import 'package:ultraapp/components/promos/gift_card.dart';
import 'package:ultraapp/components/promos/promo_certificat.dart';
import 'package:ultraapp/components/step_icon/step_icon.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';
import 'package:ultraapp/widgets/home/offer_product_card.dart';

class PromoDetails extends StatelessWidget {
  PromoDetails({Key? key, required String imageUrl}) : super(key: key);
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
                  const SizedBox(
                      height: 16), // Промежуток между текстом и таймером
                  PromoCountdownClock(
                    countdown: countdownDate,
                    hideDays: false,
                    darkMode: false,
                    showStarsCenter: true,
                    showRotatedStarsCenter: true,
                  ),
                  Row(
                    children: [
                      const SizedBox(height: 16),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Сертификат в подарок при покупке робота-пылесоса Xiaomi',
                              style: TextStyle(
                                color: AppConfig.gray800,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Center(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const StepIcon(
                                                  iconSvgPath:
                                                      'assets/icons/search.svg',
                                                  stepNumber: '1'),
                                              const SizedBox(height: 30),
                                              Positioned(
                                                bottom: -10,
                                                left: 25,
                                                child: Column(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/icons/red_arrow.svg',
                                                      width: 13,
                                                      height: 13,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 30),
                                              const StepIcon(
                                                  iconSvgPath:
                                                      'assets/icons/search.svg',
                                                  stepNumber: '2'),
                                              const SizedBox(height: 30),
                                              Positioned(
                                                bottom: -10,
                                                left: 25,
                                                child: SvgPicture.asset(
                                                  'assets/icons/red_arrow.svg',
                                                  width: 13,
                                                  height: 13,
                                                ),
                                              ),
                                              const SizedBox(height: 30),
                                              const StepIcon(
                                                  iconSvgPath:
                                                      'assets/icons/search.svg',
                                                  stepNumber: '3'),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 23,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 13),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Выберите продукт, который участвует в акции.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[600],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(height: 62),
                                        Text(
                                          'Добавьте товар в корзину и подарочный сертификат будет добавлен автоматически в корзину.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[600],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(height: 62),
                                        Text(
                                          'Оформите свой заказ со скидкой!',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[600],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Container(
                    color: AppConfig.gray100,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(13, 60, 13, 0),
                      child: Row(
                        children: [
                          Center(
                            child: SizedBox(
                              width: 368,
                              height: 123,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    top: -45,
                                    left: -5,
                                    child: SvgPicture.asset(
                                      'assets/icons/model_bg.svg',
                                      width: 368,
                                      height: 123,
                                    ),
                                  ),
                                  const Text(
                                    'Выберите модель',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: AppConfig.gray900,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: AppConfig.gray100,
                    child: Column(
                      children: [
                        const PromoGift(),
                        const SizedBox(height: 20),
                        const PromoGift(),
                        const SizedBox(height: 20),
                        const PromoGift(),
                        const SizedBox(height: 30),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(left: 6),
                            width: double.infinity,
                            height: 300,
                            child: Swiper(
                              itemBuilder: (BuildContext context, int index) {
                                return const Row(
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: OfferProductCard(),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: OfferProductCard(),
                                    ),
                                  ],
                                );
                              },
                              itemCount: 1,
                              viewportFraction: 1,
                              scale: 0.9,
                              itemWidth: double.infinity,
                            ),
                          ),
                        ),
                        const SizedBox(height: 62),
                        SvgPicture.asset(
                          'assets/icons/plus_gift.svg',
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(height: 30),
                        const PromoCertificat(),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

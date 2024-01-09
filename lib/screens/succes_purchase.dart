import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ultraapp/screens/main_screen.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';
import 'package:dotted_border/dotted_border.dart';

class PurchaseSuccessScreen extends StatelessWidget {
  const PurchaseSuccessScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Header(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(37, 43, 37, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/stars.svg',
                      width: 250,
                      height: 125,
                    ),
                    SvgPicture.asset(
                      'assets/icons/success.svg',
                      width: 250,
                      height: 125,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Спасибо за вашу покупку',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppConfig.gray800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6),
                    const SizedBox(
                      child: Text(
                        'Заказ успешно оформлен, письмо - подтверждение отправлено на ваш \n e-mail',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppConfig.gray800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    DottedBorder(
                      dashPattern: const [8, 4],
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(14),
                      color: AppConfig.gray200, // Цвет границы
                      strokeWidth: 1, // Толщина границы
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 21),
                        child: Column(
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: 110,
                                  child: Text(
                                    'Количество товаров',
                                    style: TextStyle(
                                      color: AppConfig.gray800,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 60),
                                Text(
                                  '2',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: AppConfig.gray700,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const SizedBox(
                                  width: 110,
                                  child: Text(
                                    'Заказ на сумму',
                                    style: TextStyle(
                                      color: AppConfig.gray800,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 60),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppConfig.gray400,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '30 498',
                                        style: TextStyle(
                                            color: AppConfig.primaryColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: ' лей',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: AppConfig.gray400,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    ElevatedButton(
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
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';

class ApplicationSuccessScreen extends StatelessWidget {
  const ApplicationSuccessScreen({
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
              padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 43),
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
                      'Спасибо за вашу заявку',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppConfig.gray800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Заявка успешна отправлина, в ближайшее время с Вами свяжется.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppConfig.gray800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 22),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ApplicationSuccessScreen()),
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
            )),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

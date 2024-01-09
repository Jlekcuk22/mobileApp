import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class PromoCertificat extends StatefulWidget {
  const PromoCertificat({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PromoGiftState createState() => _PromoGiftState();
}

class _PromoGiftState extends State<PromoCertificat> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 39),
        child: Stack(
          alignment: Alignment.center, // Выравнивание по центру

          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/cert_500.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(height: 15),
                        const Text(
                          'Xiaomi Mi Robot Vacuum-Mop 1C, White',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppConfig.gray900,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 28),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppConfig.gray700,
                            ),
                            children: [
                              TextSpan(
                                text: '1',
                              ),
                              TextSpan(
                                text: ' лей', // Подзаголовок
                                style: TextStyle(
                                  fontSize: 14, // Размер подзаголовка
                                  color: Colors.grey, // Цвет подзаголовка
                                  fontWeight: FontWeight
                                      .normal, // Нормальное начертание
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 48,
                width: 140,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppConfig.secondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/gift_icon.svg',
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      'Подарок',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Изменено на черный цвет
                        fontSize: 14, // Изменено на 14
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

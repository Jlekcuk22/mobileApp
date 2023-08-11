import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class PromoGift extends StatelessWidget {
  const PromoGift({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Добавьте сюда логику при нажатии на компонент
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: AppConfig.primaryColor,
            ),
            child: Image.asset(
              'assets/images/vacuum_robot.png',
              height: 135,
              width: 135,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Galaxy Watch6',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppConfig.gray700,
                        ),
                      ),
                      Radio(
                        value: '',
                        groupValue: null,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          border: Border.all(color: AppConfig.secondaryColor),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/gift_500.png',
                              width: 50,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Подарок',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppConfig.secondaryColor,
                                fontSize: 12,
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
        ],
      ),
    );
  }
}

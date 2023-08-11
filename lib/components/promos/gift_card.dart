import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class PromoGift extends StatefulWidget {
  const PromoGift({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PromoGiftState createState() => _PromoGiftState();
}

class _PromoGiftState extends State<PromoGift> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Добавьте сюда логику при нажатии на компонент
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Container(
          height: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppConfig.primaryColor),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset('assets/images/blue_сorner.png'),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 135,
                    width: 135,
                    child: Image.asset(
                      'assets/images/vacuum_robot.png',
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppConfig.gray700,
                                ),
                              ),
                              Checkbox(
                                value: _isChecked,
                                checkColor: AppConfig.gray800,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

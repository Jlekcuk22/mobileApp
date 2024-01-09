import 'package:flutter/material.dart';
import 'package:ultraapp/components/promos/promo_badge.dart';
import 'package:ultraapp/utils/app_config.dart';

class CardPromo extends StatelessWidget {
  final String imagePath;
  final String promoText;

  const CardPromo({
    Key? key,
    required this.imagePath,
    required this.promoText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: 390, // Задайте желаемую ширину
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14),
                                ),
                                child: Container(
                                  width: 376,
                                  constraints:
                                      const BoxConstraints(maxWidth: 376),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                          color: Colors.grey.shade200),
                                      right: BorderSide(
                                          color: Colors.grey.shade200),
                                      top: BorderSide(
                                          color: Colors.grey.shade200),
                                    ),
                                  ),
                                  child: Image.asset(
                                    imagePath,
                                    width: double.infinity,
                                    fit: BoxFit.contain,
                                    repeat: ImageRepeat.noRepeat,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 374,
                                child: Container(
                                  height: 68,
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                    color: AppConfig.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(14),
                                      bottomRight: Radius.circular(14),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    child: Text(
                                      promoText,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
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
            const PromoBadge(text: '15 января'),
          ],
        ),
      ],
    );
  }
}

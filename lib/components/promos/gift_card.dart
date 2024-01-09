import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PromoGift extends StatefulWidget {
  const PromoGift({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PromoGiftState createState() => _PromoGiftState();
}

class _PromoGiftState extends State<PromoGift> {
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
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Stack(
          alignment: Alignment.center, // Выравнивание по центру
          children: [
            Container(
              height: 185,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(
                    BorderSide(color: AppConfig.primaryColor)),
              ),
            ),
            Positioned(
              top: 6,
              left: 1,
              child: Image.asset('assets/images/blue_сorner.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Xiaomi Mi Robot\nVacuum-Mop 1C , White',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppConfig.gray700,
                              ),
                            ),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: AppConfig.primaryColor,
                            value: isChecked,
                            side: const BorderSide(
                              color: AppConfig.primaryColor,
                              width: 2,
                            ),
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                              
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 48,
                width: 140,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
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
                    Text(
                      AppLocalizations.of(context)!.gift,
                      style: const TextStyle(
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
    );
  }
}

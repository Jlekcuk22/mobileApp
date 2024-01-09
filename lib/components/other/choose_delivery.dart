import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class ChooseDelivery extends StatefulWidget {
  const ChooseDelivery({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChooseDeliveryState createState() => _ChooseDeliveryState();
}

class _ChooseDeliveryState extends State<ChooseDelivery> {
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
              height: 115,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: const Border.fromBorderSide(
                    BorderSide(color: AppConfig.primaryColor)),
              ),
            ),
            Positioned(
              bottom: 3,
              left: 0,
              child: Image.asset(
                'assets/images/blue_сorner.png',
                height: 110,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

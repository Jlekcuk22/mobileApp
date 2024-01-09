import 'package:flutter/material.dart';
import 'package:ultraapp/components/input/register_form.dart';
import 'package:ultraapp/utils/app_config.dart';

class ModalCreditProcessing extends StatelessWidget {
  const ModalCreditProcessing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(19, 28, 19, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Оформление кредита',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppConfig.gray800,
                    ),
                  ),
                  RegisterForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

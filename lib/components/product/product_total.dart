import 'package:flutter/material.dart';
import 'package:ultraapp/modals/modal_credt_processing.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalContainer extends StatelessWidget {
  final String totalAmount;
  final String creditOptionAmount;

  const TotalContainer({
    Key? key,
    required this.totalAmount,
    required this.creditOptionAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(19, 14, 19, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.total,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '30 498',
                    style: TextStyle(
                      color: AppConfig.primaryColor,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'лей',
                    style: TextStyle(
                      color: AppConfig.gray400,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Кредит 0%, 6 месяцев',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppConfig.gray400),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '3 610 лей',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppConfig.gray400),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 27),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppConfig.secondaryColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                icon: SvgPicture.asset(
                  'assets/icons/cart_add.svg',
                  width: 20,
                  height: 20,
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
                label: const Text(
                  'Добавить в корзину',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const ModalCreditProcessing();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  side: const BorderSide(
                    color: AppConfig.primaryColor,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/credit.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'Оформить кредит',
                      style: TextStyle(
                        color: AppConfig.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

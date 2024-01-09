import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color hoverColor;

  const CategoryCard({
    super.key,
    required this.title,
    this.backgroundColor = AppConfig.secondaryColor,
    this.hoverColor = AppConfig.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 90,
      constraints: const BoxConstraints(minWidth: 160, minHeight: 80),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: AppConfig.gray200,
          width: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: AppConfig.gray100.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Positioned.fill(
            top: -15,
            left: -7,
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                'assets/icons/promo_red_bg.svg',
              ),
            ),
          ),
          Positioned.fill(
            top: -45,
            left: 23,
            child: Transform.rotate(
              angle: -0.7,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.to,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    const Text(
                      '11%',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset('assets/icons/mobile_phone.svg'),
                    const SizedBox(height: 2),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppConfig.primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

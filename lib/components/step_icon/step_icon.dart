import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class StepIcon extends StatelessWidget {
  final String iconSvgPath;
  final String stepNumber;

  const StepIcon(
      {super.key, required this.iconSvgPath, required this.stepNumber});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppConfig.gray100,
            border: Border.all(color: AppConfig.gray200),
            shape: BoxShape.circle,
          ),
          width: 60,
          height: 60,
          child: Center(
            child: SvgPicture.asset(
              iconSvgPath,
              width: 28,
              height: 28,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: AppConfig.gray800,
              shape: BoxShape.circle,
            ),
            width: 22,
            height: 22,
            child: Center(
              child: Text(
                stepNumber,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

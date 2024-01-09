import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class InactiveButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final String text;

  const InactiveButton({
    super.key,
    required this.onPressed,
    this.child,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppConfig.gray300,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/back-arrow.svg',
                // ignore: deprecated_member_use
                color: AppConfig.gray300),
            const SizedBox(width: 10.5),
            Text(
              text,
              style: const TextStyle(
                color: AppConfig.gray300, // Цвет текста активной кнопки
              ),
            ),
          ],
        ),
      ),
    );
  }
}

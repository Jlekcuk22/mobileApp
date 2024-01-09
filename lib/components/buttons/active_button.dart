import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class ActiveButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ActiveButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppConfig.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        // Цвет активной кнопки
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white, // Цвет текста активной кнопки
            ),
          ),
          const SizedBox(width: 10.5),
          Transform.rotate(
            angle: 3.14159265359, // 180 градусов в радианах
            child: SvgPicture.asset('assets/icons/back-arrow.svg'),
          ),
        ],
      ),
    );
  }
}

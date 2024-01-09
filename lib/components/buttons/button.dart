import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final EdgeInsetsGeometry padding;
  final String? svgIconPath; // Новый параметр для пути к SVG иконке
  final TextStyle? textStyle;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.padding,
    this.svgIconPath, // Параметр для передачи пути к SVG иконке
    this.textStyle,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Действие, которое происходит при нажатии кнопки
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (svgIconPath != null) // Добавляем иконку, если она задана
            Padding(
              padding: const EdgeInsets.only(
                  right: 8.0), // Добавляем отступ справа от иконки
              child: SvgPicture.asset(
                svgIconPath!,
                height: 20, // Задайте желаемую высоту иконки
                width: 20, // Задайте желаемую ширину иконки
                // ignore: deprecated_member_use
                color: Colors.white, // Замените на желаемый цвет иконки
              ),
            ),
          const SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: textStyle ??
                const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

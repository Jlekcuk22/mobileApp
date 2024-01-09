import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class ColoredDotTextRow extends StatelessWidget {
  final String text;

  const ColoredDotTextRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppConfig.secondaryColor,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: AppConfig.gray800,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.5),
      ],
    );
  }
}

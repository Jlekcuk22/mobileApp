import 'package:flutter/material.dart';

class PromoBadge extends StatelessWidget {
  final String text;

  const PromoBadge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      left: 3,
      child: Stack(
        children: [
          Image.asset('assets/images/promo_badge.png'),
          Positioned(
            top: 6,
            left: 17,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  letterSpacing: 0.4,
                ),
                children: [
                  const TextSpan(
                    text: 'до',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  TextSpan(
                    text: ' $text',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

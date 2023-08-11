import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        const Text(
          'Смартфон Apple iPhone 14 Pro Max, 6Гб/128Гб, Deep Purple',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 42.0,
        ),
        Image.asset(
          'assets/images/product_iphone.png',
          height: 332.0,
          width: 343.0,
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: 20.0,
        )
      ]),
    );
  }
}

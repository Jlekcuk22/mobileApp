import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Text(
              'Смартфон Apple iPhone 14 Pro Max, 6Гб/128Гб, Deep Purple',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 33.0,
          ),
          Image.asset(
            'assets/images/product_iphone.png',
            height: 332.0,
            width: 343.0,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

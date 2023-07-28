import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/product_detail_screen.dart';
import 'package:ultraapp/utils/app_config.dart';

class OfferProductCard extends StatelessWidget {
  const OfferProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<void>(
          barrierColor: Colors.transparent,
          useSafeArea: true,
          context: context,
          builder: (BuildContext context) {
            return const FractionallySizedBox(
              alignment: AlignmentDirectional.center,
              heightFactor: 0.8,
              child: ProductDetailScreen(),
            );
          },
        );
      },
      child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(
                  'assets/images/product.png'), // Replace with your product image
              Positioned(
                top: 0, // Adjust the top position as needed
                right: -2, // Adjust the right position as needed
                child: SvgPicture.asset(
                  'assets/icons/favorite.svg',
                  width: 24,
                  height: 24,
                ), // Replace with your favorite icon
              ),
            ],
        
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'iPhone 13, 128 GB Red EU',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppConfig.gray800,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: const Row(
              children: [
                Text(
                  '3 900',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppConfig.gray800,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'лей/мес',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppConfig.gray100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          Container(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: const Row(
                children: [
                  Text(
                    '20 159',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppConfig.primaryColor,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'лей',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppConfig.gray100,
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 8),
        ],
      ),
      ),
    );
  }
}

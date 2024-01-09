import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/product_detail_screen.dart';
import 'package:ultraapp/utils/app_config.dart';

class OfferProductCard extends StatefulWidget {
  const OfferProductCard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OfferProductCardState createState() => _OfferProductCardState();
}

class _OfferProductCardState extends State<OfferProductCard> {
  bool isFavorite = false;
  

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;



    return GestureDetector(
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(
            color: AppConfig.gray100,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset('assets/images/product.png'),
                  Positioned(
                    top: 0,
                    right: -2,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: isFavorite
                          ? SvgPicture.asset(
                              'assets/icons/favorite_full.svg',
                              width: 24,
                              height: 24,
                            )
                          : SvgPicture.asset(
                              'assets/icons/favorite.svg',
                              width: 24,
                              height: 24,
                              // ignore: deprecated_member_use
                              color: AppConfig.secondaryColor,
                            ),
                    ),
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
                        color: AppConfig.primaryColor,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'лей/мес',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppConfig.gray400,
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
                        color: AppConfig.gray400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:ultraapp/utils/app_config.dart';

import 'offer_product_card.dart';

class OfferProductsBlock extends StatelessWidget {
  const OfferProductsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10), // Add vertical padding of 20
          child: Text(
            'Товар на акции',
            style: TextStyle(
              fontSize: 30,
              color: AppConfig.gray800,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: OfferProductCard(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: OfferProductCard(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: OfferProductCard(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: OfferProductCard(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

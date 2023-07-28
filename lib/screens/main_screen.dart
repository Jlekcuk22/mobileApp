import 'package:flutter/material.dart';
import 'package:ultraapp/widgets/header.dart';
import 'package:ultraapp/widgets/home/offer_products_block.dart';
import 'package:ultraapp/widgets/main_slider.dart';
import '../utils/app_config.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).padding.top + 60,
            child: Container(
              color: AppConfig.primaryColor,
            ),
          ),
          SafeArea(
              child: Container(
            color: AppConfig.gray50,
            child: const Column(
              children: [
                Header(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MainSlider(),
                        OfferProductsBlock(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

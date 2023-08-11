import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/components/buttons/button.dart';
import 'package:ultraapp/components/product/product_color.dart';
import 'package:ultraapp/components/product/product_memory.dart';
import 'package:ultraapp/components/product/product_title.dart';
import 'package:ultraapp/components/tab_bars/tab_bar.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../components/accordion/accordion.dart';
import '../components/block_review/rating_block.dart';
import '../components/product/product_total.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 33),
                child: ProductTitle(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductColor(
                          imageAsset: 'assets/images/product_iphone.png',
                          imageHeight: 54.0,
                          imageWidth: 54.0,
                          isActive: true,
                        ),
                        SizedBox(width: 10.7),
                        ProductColor(
                          imageAsset: 'assets/images/product_iphone.png',
                          imageHeight: 54.0,
                          imageWidth: 54.0,
                          isActive: false,
                        ),
                        SizedBox(width: 10.7),
                        ProductColor(
                          imageAsset: 'assets/images/product_iphone.png',
                          imageHeight: 54.0,
                          imageWidth: 54.0,
                          isActive: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 26.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context).ram,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppConfig.gray100,
                              ),
                            ),
                            const SizedBox(height: 14.0),
                            const Row(
                              children: [
                                ProductMemory(text: '8Gb', isActive: true),
                                SizedBox(width: 12),
                                ProductMemory(text: '16Gb', isActive: false),
                                SizedBox(width: 12),
                                ProductMemory(text: '32Gb', isActive: false),
                              ],
                            ),
                            // Rest of the content...
                          ],
                        ),
                        const SizedBox(
                          height: 37.0,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TotalContainer(
                              totalAmount: '30 498',
                              creditOptionAmount: '3 610',
                            ),
                          ],
                        ),
                        const SizedBox(height: 64.0),
                      ],
                    ),
                  ],
                ),
              ),
              CustomExpansionTile(
                  tilePadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  title: AppLocalizations.of(context).specifications,
                  background: AppConfig.gray,
                  titleStyle: const TextStyle(
                    color: AppConfig.gray800,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  initiallyExpanded: true,
                  icon: SvgPicture.asset('assets/icons/red_arrow_down.svg'),
                  borderRadius: 0,
                  children: [
                    Container(
                        color: AppConfig.gray,
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 13),
                            child: Column(
                              children: [
                                CustomExpansionTile(
                                  tilePadding:
                                      const EdgeInsets.fromLTRB(30, 15, 30, 0),
                                  initiallyExpanded: true,
                                  background: Colors.white,
                                  title: AppLocalizations.of(context)
                                      .main_characteristics,
                                  titleStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppConfig.gray900),
                                  children: const <Widget>[
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomExpansionTile(
                                  tilePadding:
                                      const EdgeInsets.fromLTRB(30, 15, 30, 0),
                                  initiallyExpanded: true,
                                  background: Colors.white,
                                  title: AppLocalizations.of(context)
                                      .main_characteristics,
                                  titleStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppConfig.gray900),
                                  children: const <Widget>[
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomExpansionTile(
                                  tilePadding:
                                      const EdgeInsets.fromLTRB(30, 15, 30, 0),
                                  initiallyExpanded: true,
                                  background: Colors.white,
                                  title: AppLocalizations.of(context)
                                      .main_characteristics,
                                  titleStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppConfig.gray900),
                                  children: const <Widget>[
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 15),
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Вид компьютера',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: AppConfig.gray500),
                                          ),
                                        ],
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 6.0),
                                        child: Text(
                                          'Моноблок',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppConfig.gray800),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )))
                  ]),
              CustomExpansionTile(
                  tilePadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  title: AppLocalizations.of(context).reviews,
                  background: AppConfig.gray,
                  titleStyle: const TextStyle(
                    color: AppConfig.gray800,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  initiallyExpanded: true,
                  icon: SvgPicture.asset('assets/icons/red_arrow_down.svg'),
                  borderRadius: 0,
                  children: const [
                    Center(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ReviewsRatingBlock(
                                  ratingValue: 4.0,
                                  reviewCount: 73,
                                ),
                              ],
                            )))
                  ]),
              Container(
                  width: double.infinity,
                  color: AppConfig.gray,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Можете написать отзыв для следующих\nпокупателей.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            letterSpacing: 0.25,
                            height: 1.3,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppConfig.gray500,
                          ),
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          text: 'Написать отзыв',
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                          color: AppConfig.primaryColor,
                          padding:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 9),
                          svgIconPath: 'assets/icons/edit_review.svg',
                          borderRadius: 6,
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Сортировка по:',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppConfig.gray600),
                            ),
                            TabBarApp(),
                          ],
                        ),
                        
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
  
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/components/buttons/button.dart';
import 'package:ultraapp/components/other/colored_dot_text_list.dart';
import 'package:ultraapp/components/product/product_color.dart';
import 'package:ultraapp/components/product/product_memory.dart';
import 'package:ultraapp/components/product/product_title.dart';
import 'package:ultraapp/components/product/product_total.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultraapp/widgets/CustomExpansionPanel.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int selectedMemoryIndex = 0;
  int activeColorIndex = -1;
  String selectedColorText = ' Серебристый';
  int activeButtonIndex = -1;
  bool _isPanelExpanded = true;

  void updateSelectedMemory(int memoryIndex, String s) {
    setState(() {
      selectedMemoryIndex = memoryIndex;
    });
  }

  void handleColorTap(int colorIndex, String colorText) {
    setState(() {
      if (activeColorIndex == colorIndex) {
        activeColorIndex = -1;
      } else {
        activeColorIndex = colorIndex;
        selectedColorText = colorText;
      }
    });
  }

  void handleButtonTap(int buttonIndex) {
    setState(() {
      if (activeButtonIndex == buttonIndex) {
        activeButtonIndex = -1;
      } else {
        activeButtonIndex = buttonIndex;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Header(),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 33),
              child: ProductTitle(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppConfig.gray500,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Цвет:',
                        ),
                        TextSpan(
                          text: selectedColorText,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppConfig.gray800,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductColor(
                        imageAsset: 'assets/images/product_iphone.png',
                        imageHeight: 54.0,
                        imageWidth: 54.0,
                        isActive: activeColorIndex == 0,
                        onColorTapped: (isActive) {
                          handleColorTap(0, ' Серебристый');
                        },
                      ),
                      const SizedBox(width: 10.7),
                      ProductColor(
                        imageAsset: 'assets/images/product_iphone.png',
                        imageHeight: 54.0,
                        imageWidth: 54.0,
                        isActive: activeColorIndex == 1,
                        onColorTapped: (isActive) {
                          handleColorTap(1, ' Черный');
                        },
                      ),
                      const SizedBox(width: 10.7),
                      ProductColor(
                        imageAsset: 'assets/images/product_iphone.png',
                        imageHeight: 54.0,
                        imageWidth: 54.0,
                        isActive: activeColorIndex == 2,
                        onColorTapped: (isActive) {
                          handleColorTap(2, ' Белый');
                        },
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
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppConfig.gray500,
                              ),
                              children: [
                                TextSpan(
                                  text: AppLocalizations.of(context)!.ram,
                                ),
                                const TextSpan(
                                  text: ' 512Gb',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: AppConfig.gray800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14.0),
                          Row(
                            children: [
                              ProductMemory(
                                text: ' 8Gb',
                                isActive: activeButtonIndex == 0,
                                onPressed: () {
                                  handleButtonTap(0);
                                },
                                index: 0,
                                onIndexChanged: (index) {
                                  setState(() {
                                    handleButtonTap(index);
                                  });
                                },
                              ),
                              const SizedBox(width: 12),
                              ProductMemory(
                                text: ' 16Gb',
                                isActive: activeButtonIndex == 1,
                                onPressed: () {
                                  handleButtonTap(1);
                                },
                                index: 1,
                                onIndexChanged: (index) {
                                  setState(() {
                                    handleButtonTap(index);
                                  });
                                },
                              ),
                              const SizedBox(width: 12),
                              ProductMemory(
                                text: '32Gb',
                                isActive: activeButtonIndex == 2,
                                onPressed: () {
                                  handleButtonTap(2);
                                },
                                index: 2,
                                onIndexChanged: (index) {
                                  setState(() {
                                    handleButtonTap(index);
                                  });
                                },
                              ),
                            ],
                          ),
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
            ExpansionPanelList(
              elevation: 1,
              expandedHeaderPadding: const EdgeInsets.all(0),
              expandIconColor: AppConfig.secondaryColor,
              dividerColor: Colors.transparent,
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  _isPanelExpanded = !_isPanelExpanded;
                });
              },
              children: <ExpansionPanel>[
                ExpansionPanel(
                  backgroundColor: AppConfig.gray100,
                  isExpanded: _isPanelExpanded,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Характеристики',
                        style: TextStyle(
                          color: AppConfig.gray800,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                  body: const CustomExpansionPanel(),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              color: AppConfig.gray100,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
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
                    const SizedBox(height: 20),
                    const CustomButton(
                      text: ' Написать отзыв',
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      color: AppConfig.primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 9,
                      ),
                      svgIconPath: 'assets/icons/edit_review.svg',
                      borderRadius: 6,
                    ),
                    const SizedBox(height: 30),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Сортировка по:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppConfig.gray600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(
                                  maxWidth: double.maxFinite),
                              width: double.infinity,
                              // child: const TabControllerExampleApp(),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        AppConfig.primaryColor.withOpacity(0.1),
                                    blurRadius: 10,
                                  )
                                ],
                                color: AppConfig.gray100,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: AppConfig.gray200,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 7.5, right: 7.5),
                                child: SvgPicture.asset(
                                  'assets/icons/avatar.svg',
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 30),
                        const Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Дмитрий\nБоровиков',
                                style: TextStyle(
                                  color: AppConfig.gray800,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '15.03.2022 10:14',
                                style: TextStyle(
                                  color: AppConfig.gray400,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Опыт использования:',
                                  style: TextStyle(
                                    color: AppConfig.gray500,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Несколько месяцев',
                                  style: TextStyle(
                                    color: AppConfig.gray800,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 13),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 195,
                                    height: 2,
                                    color: AppConfig.gray200,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Достоинства:',
                          style: TextStyle(
                            color: AppConfig.gray500,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 13),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 2,
                            color: AppConfig.gray200,
                          ),
                        ),
                        const SizedBox(width: 13),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(maxWidth: 340),
                      child: const Column(
                        children: [
                          ColoredDotTextRow(
                            text: 'Топовый моноблок по начинке',
                          ),
                          ColoredDotTextRow(
                            text:
                                'Берите только с памятью 16 GB - потом \nскажете спасибо. 8 GB - очень мало.',
                          ),
                          ColoredDotTextRow(
                            text: 'Разблокировка по Touch ID удобна',
                          ),
                          ColoredDotTextRow(
                            text:
                                'Микрофон и видео вышли на новый \nуровень по сравнению со старой \nмоделью 27"',
                          ),
                          ColoredDotTextRow(
                            text: 'Дизайн',
                          ),
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

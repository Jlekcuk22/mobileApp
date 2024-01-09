import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/components/filter_slider_price/filter_slider_price.dart';
import 'package:ultraapp/screens/sub_category_screen.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String selectedSortOption = 'all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
              color: AppConfig.gray200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Смартфоны',
                        style: TextStyle(
                            color: AppConfig.gray800,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppConfig.gray600,
                          ),
                          children: [
                            TextSpan(
                              text: '101',
                            ),
                            TextSpan(
                              text: ' товар',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppConfig.gray400,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConfig.gray200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: const BorderSide(
                              color: AppConfig.gray200,
                              width: 1.0,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            showDragHandle: true,
                            enableDrag: true,
                            backgroundColor:
                                Colors.transparent, // Сделаем фон прозрачным
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context, setState) {
                                  return Stack(
                                    children: [
                                      Positioned.fill(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 550,
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 20, 16, 20),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 25, bottom: 30),
                                                child: const Text(
                                                  'Сортировка',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: AppConfig.gray800,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              RadioListTile<String>(
                                                title: const Text('Все'),
                                                value: 'all',
                                                groupValue: selectedSortOption,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedSortOption = value!;
                                                  });
                                                },
                                              ),
                                              RadioListTile<String>(
                                                title: const Text(
                                                    'Сначала популярные'),
                                                value: 'popular',
                                                groupValue: selectedSortOption,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedSortOption = value!;
                                                  });
                                                },
                                              ),
                                              RadioListTile<String>(
                                                title: const Text(
                                                    'Сначала дешевле'),
                                                value: 'cheaper',
                                                groupValue: selectedSortOption,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedSortOption = value!;
                                                  });
                                                },
                                              ),
                                              RadioListTile<String>(
                                                title: const Text(
                                                    'Сначала дороже'),
                                                value: 'expensive',
                                                groupValue: selectedSortOption,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedSortOption = value!;
                                                  });
                                                },
                                              ),
                                              RadioListTile<String>(
                                                title: const Text(
                                                    'Сначала с высоким рейтингом'),
                                                value: 'topOne',
                                                groupValue: selectedSortOption,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedSortOption = value!;
                                                  });
                                                },
                                              ),
                                              RadioListTile<String>(
                                                title:
                                                    const Text('Сначала новое'),
                                                value: 'new',
                                                groupValue: selectedSortOption,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedSortOption = value!;
                                                  });
                                                },
                                              ),
                                              const SizedBox(height: 42),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 200,
                                        right: 15,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Закрыть',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              'Сортировка',
                              style: TextStyle(
                                color: AppConfig.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SvgPicture.asset('assets/icons/down-up-arrow.svg'),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConfig.gray200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: const BorderSide(
                              color: AppConfig.gray200,
                              width: 1.0,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context, setState) {
                                  return Stack(
                                    children: [
                                      Positioned.fill(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 650,
                                        child: SingleChildScrollView(
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                16, 20, 16, 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 25, bottom: 30),
                                                  child: const Text(
                                                    'Фильтры',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: AppConfig.gray800,
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const PriceFilterWidget(),
                                                const SizedBox(height: 16),
                                                Center(
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            AppConfig
                                                                .primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0)),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          vertical: 12,
                                                          horizontal: 24,
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        'Показать',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: -50,
                                        right: 15,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Закрыть',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              'Фильтры',
                              style: TextStyle(
                                color: AppConfig.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SvgPicture.asset('assets/icons/filter.svg'),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppConfig.gray200,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 12.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SubCategoryModal(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/iphone.png'),
                            const SizedBox(height: 10),
                            const Text(
                              'Смартфоны и гаджеты',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

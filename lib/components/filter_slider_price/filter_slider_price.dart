import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class PriceFilterWidget extends StatefulWidget {
  const PriceFilterWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PriceFilterWidgetState createState() => _PriceFilterWidgetState();
}

class _PriceFilterWidgetState extends State<PriceFilterWidget> {
  bool opened = true;
  bool opened1 = true;
  bool opened2 = false;
  bool opened3 = false;
  double minPrice = 1699;
  double maxPrice = 42999;

  List<String> electronicBrands = [
    "Samsung",
    "Apple",
    "Sony",
    "LG",
    "HP",
  ];
  List<String> shellType = [
    "Metal",
    "Plastic",
    "Carbon",
  ];
  List<String> systemOs = [
    "Windows",
    "IOS",
    "Android",
  ];

  List<String> selectedBrands = [];
  List<String> selectedOs = [];
  List<String> selectedShell = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                opened = !opened;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    opened
                        ? 'assets/icons/gray-up-circle.svg'
                        : 'assets/icons/gray-down-circle.svg',
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Цена',
                    style: TextStyle(
                      color: AppConfig.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 800),
            opacity: opened ? 1.0 : 0.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: opened ? null : 0.0,
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  RangeSlider(
                    activeColor: AppConfig.primaryColor,
                    values: RangeValues(minPrice, maxPrice),
                    min: 1699,
                    max: 42999,
                    onChanged: (values) {
                      setState(() {
                        minPrice = values.start;
                        maxPrice = values.end;
                      });
                    },
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                              color: AppConfig.gray800,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                          initialValue: minPrice.toStringAsFixed(0),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            setState(() {
                              minPrice = double.tryParse(value) ?? minPrice;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppConfig.gray200,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                              color: AppConfig.gray800,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                          initialValue: maxPrice.toStringAsFixed(0),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            setState(() {
                              maxPrice = double.tryParse(value) ?? maxPrice;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppConfig.gray200,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                opened1 = !opened1;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    opened1
                        ? 'assets/icons/gray-up-circle.svg'
                        : 'assets/icons/gray-down-circle.svg',
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Бренд',
                    style: TextStyle(
                      color: AppConfig.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 800),
            opacity: opened1 ? 1.0 : 0.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: opened1 ? null : 0.0,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: electronicBrands.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 8.0);
                },
                itemBuilder: (BuildContext context, int index) {
                  final brand = electronicBrands[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: selectedBrands.contains(brand),
                            onChanged: (bool? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  if (newValue) {
                                    selectedBrands.add(brand);
                                  } else {
                                    selectedBrands.remove(brand);
                                  }
                                });
                              }
                            },
                          ),
                          Text(
                            brand,
                            style: const TextStyle(
                                color: AppConfig.gray900,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                                color: AppConfig.gray400,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                opened2 = !opened2;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    opened2
                        ? 'assets/icons/gray-up-circle.svg'
                        : 'assets/icons/gray-down-circle.svg',
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Тип корпуса',
                    style: TextStyle(
                      color: AppConfig.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 800),
            opacity: opened2 ? 1.0 : 0.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: opened2 ? null : 0.0,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: shellType.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 8.0);
                },
                itemBuilder: (BuildContext context, int index) {
                  final brand = shellType[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: selectedShell.contains(brand),
                            onChanged: (bool? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  if (newValue) {
                                    selectedShell.add(brand);
                                  } else {
                                    selectedShell.remove(brand);
                                  }
                                });
                              }
                            },
                          ),
                          Text(
                            brand,
                            style: const TextStyle(
                                color: AppConfig.gray900,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '11',
                            style: TextStyle(
                                color: AppConfig.gray400,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                opened3 = !opened3;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    opened3
                        ? 'assets/icons/gray-up-circle.svg'
                        : 'assets/icons/gray-down-circle.svg',
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Платформа программного\nобеспечения',
                    style: TextStyle(
                      color: AppConfig.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 800),
            opacity: opened3 ? 1.0 : 0.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: opened3 ? null : 0.0,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: systemOs.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 8.0);
                },
                itemBuilder: (BuildContext context, int index) {
                  final brand = systemOs[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: selectedOs.contains(brand),
                            onChanged: (bool? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  if (newValue) {
                                    selectedOs.add(brand);
                                  } else {
                                    selectedOs.remove(brand);
                                  }
                                });
                              }
                            },
                          ),
                          Text(
                            brand,
                            style: const TextStyle(
                                color: AppConfig.gray900,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '11',
                            style: TextStyle(
                                color: AppConfig.gray400,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

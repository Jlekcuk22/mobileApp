import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class ProductItem extends StatefulWidget {
  final String imageAsset;
  final String productName;
  final Widget? badgeWidget;
  final String discountText;
  final String price;
  final String? originalPrice;
  final bool showBadge;

  const ProductItem({
    super.key,
    required this.imageAsset,
    required this.productName,
    this.badgeWidget,
    required this.discountText,
    required this.price,
    this.originalPrice,
    this.showBadge = true,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool _isDeleted = false;

  void _deleteProduct() {
    setState(() {
      _isDeleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isDeleted) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/green_check.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 4),
                const Text(
                  'в наличии',
                  style: TextStyle(
                      color: AppConfig.jade500,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 10),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppConfig.gray400,
                    ),
                    children: [
                      TextSpan(
                        text: 'Артикул:',
                      ),
                      TextSpan(
                        text: ' 66A2GACBEU',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppConfig.gray700,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: _deleteProduct, // Вызываем метод удаления при нажатии
              child: SvgPicture.asset(
                'assets/icons/close.svg',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppConfig.gray200),
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          widget.imageAsset,
                          alignment: Alignment.center,
                          height: 70.0,
                          width: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    widget.productName,
                    style: const TextStyle(
                        color: AppConfig.gray600,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {
                        // Действия при уменьшении количества
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/minus.svg',
                          // ignore: deprecated_member_use
                          color: AppConfig.gray800,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 34,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppConfig.gray800),
                        decoration: const InputDecoration(
                          hintText: '0',
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          enabledBorder: InputBorder.none,
                        ),
                        onChanged: (value) {
                          // Логика изменения значения текстового поля
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Действия при увеличении количества
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/plus.svg',
                          // ignore: deprecated_member_use
                          color: AppConfig.gray800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    if (widget.showBadge && widget.badgeWidget != null)
                      Stack(
                        children: [
                          widget.badgeWidget!,
                        ],
                      ),
                  ],
                ),
                Column(
                  children: [
                    if (widget.originalPrice != null)
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: AppConfig.gray400,
                                decorationColor: AppConfig.secondaryColor,
                                decoration: TextDecoration.lineThrough),
                            children: [
                              TextSpan(
                                text: widget.originalPrice,
                              ),
                              const TextSpan(
                                text: ' лей',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppConfig.gray400,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text: widget.price,
                              style: TextStyle(
                                color: widget.originalPrice == null
                                    ? AppConfig.gray800
                                    : AppConfig.secondaryColor,
                              ),
                            ),
                            const TextSpan(
                              text: ' лей',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppConfig.gray400,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Container(
                  width: 375,
                  height: 1,
                  color: AppConfig.gray200,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

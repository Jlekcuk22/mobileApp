import 'package:flutter/material.dart';
import 'package:ultraapp/components/pagination/pagination.dart';
import 'package:ultraapp/components/promos/promo_card.dart';
import 'package:ultraapp/components/promos/promo_category.dart';
import 'package:ultraapp/components/promos/promo_flip.dart';
import 'package:ultraapp/utils/app_config.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/header_widger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _PromoScreenState createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(21, 20, 21, 0),
                          child: Text(
                            AppLocalizations.of(context)!.promos,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: AppConfig.gray800,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PromoCategories(
                                        imageUrl: '', 
                                      ),
                                    ),
                                  );
                                },
                                child: const CardPromo(
                                  imagePath: 'assets/images/promo.png',
                                  promoText: 'Новая акция: скидки на всё!',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PromoDetails(
                                        imageUrl: '',
                                      ),
                                    ),
                                  );
                                },
                                child: const CardPromo(
                                  imagePath: 'assets/images/promo_karcher.png',
                                  promoText:
                                      'Скидки до 20% на бытовую технику для уборки дома',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Handle the tap on the third CardPromo
                                },
                                child: const CardPromo(
                                  imagePath: 'assets/images/promo.png',
                                  promoText:
                                      'Скидки до 20% на бытовую технику для уборки дома',
                                ),
                              ),
                              const SizedBox(height: 47),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 140,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text.rich(
                                                TextSpan(
                                                  text: AppLocalizations.of(
                                                          context)!
                                                      .showFrom,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    color: AppConfig.gray400,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0.6,
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: AppLocalizations.of(
                                                              context)!
                                                          .fromTo(1, 10),
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                            AppConfig.gray800,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.6,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: AppLocalizations.of(
                                                              context)!
                                                          .outOf(111),
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                            AppConfig.gray800,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.6,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: AppLocalizations.of(
                                                              context)!
                                                          .results,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                            AppConfig.gray400,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.6,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Pagination(totalPages: 5),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

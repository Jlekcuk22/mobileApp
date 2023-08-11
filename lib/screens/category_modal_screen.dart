import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/screens/sub_category_screen.dart';
import '../utils/app_config.dart';

class CategoryModalWidget extends StatelessWidget {
  const CategoryModalWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
            color: Colors.white,
            margin: const EdgeInsets.only(top: 30),
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 9.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDialog<void>(
                      barrierColor: Colors.transparent,
                      useSafeArea: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const FractionallySizedBox(
                          alignment: AlignmentDirectional.center,
                          heightFactor: 0.76,
                          child: SubCategoryModal(),
                        );
                      },
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          bottom: 70.0,
                          child: SvgPicture.asset(
                            'assets/images/bg_logo.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/images/iphone.png',
                                alignment: Alignment.center,
                                height: 120.0,
                                width: 120.0,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                AppLocalizations.of(context).phones_and_gadgets,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}

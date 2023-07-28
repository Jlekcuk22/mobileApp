import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultraapp/utils/app_config.dart';

class SubCategoryModal extends StatelessWidget {
  const SubCategoryModal({super.key});
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
            )),
        SafeArea(
            child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: ListView.separated(
                  itemBuilder: (context, i) => ListTile(
                    title: Text(
                      AppLocalizations.of(context).phones,
                    ),
                    trailing: SvgPicture.asset(
                      'assets/images/arrow_right.svg',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    color: Colors.grey,
                  ),
                  itemCount: 10,
                ),
              )
            ],
          ),
        )),
      ]),
    );
  }
}

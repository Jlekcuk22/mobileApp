import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';

class SubCategoryModal extends StatelessWidget {
  const SubCategoryModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Container(
            width: 300,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, i) => ListTile(
                      title: Text(
                        AppLocalizations.of(context)!.phones,
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
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

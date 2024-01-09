import 'package:flutter/material.dart';
import 'package:ultraapp/screens/sub_category_screen.dart';
import 'package:ultraapp/utils/app_config.dart';
import 'package:ultraapp/widgets/bottom_navigation.dart';
import 'package:ultraapp/widgets/header_widger.dart';

class CategoryModalWidget extends StatelessWidget {
  const CategoryModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: Container(
              color: AppConfig.gray200,
              child: GridView.builder(
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
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

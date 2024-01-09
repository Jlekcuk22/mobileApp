import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/components/buttons/active_button.dart';
import 'package:ultraapp/components/buttons/inactive_button.dart';
import 'package:ultraapp/components/input/order_form.dart';
import 'package:ultraapp/components/other/choose_delivery.dart';
import 'package:ultraapp/utils/app_config.dart';

class OrderFormTabView extends StatelessWidget {
  const OrderFormTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 850),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            topLeft: Radius.circular(8),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 28),
            const Text(
              'Оформление заказа',
              style: TextStyle(
                color: AppConfig.gray800,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                _buildTab('assets/icons/clipboard-checklist.svg'),
                _buildTab('assets/icons/delivery-truck.svg'),
                _buildTab('assets/icons/debit-card.svg'),
              ],
              labelColor: AppConfig.primaryColor,
              unselectedLabelColor: AppConfig.gray400,
              labelStyle: const TextStyle(
                color: Colors.transparent,
                fontWeight: FontWeight.bold,
              ),
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppConfig.primaryColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Container(
                      height: 750,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 16,
                            ),
                            child: Column(
                              children: [
                                const OrderForm(),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InactiveButton(
                                      onPressed: () {},
                                      text: 'Назад',
                                    ),
                                    const SizedBox(width: 16),
                                    ActiveButton(
                                      onPressed: () {
                                        // Действие, которое происходит при нажатии кнопки
                                      },
                                      text: 'Далее',
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Center(
                    child: ChooseDelivery(),
                  ),
                  const Center(
                    child: Text("Содержимое Профиля вкладки"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Tab _buildTab(String iconPath) {
    return Tab(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(iconPath),
          const SizedBox(width: 9),
          const Text(
            '',
            style: TextStyle(
              color: AppConfig.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

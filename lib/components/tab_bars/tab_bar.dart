import 'package:flutter/material.dart';

class CustomTabBarExample extends StatefulWidget {
  const CustomTabBarExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTabBarExampleState createState() => _CustomTabBarExampleState();
}

class _CustomTabBarExampleState extends State<CustomTabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(
          () {}); // Обновление внешнего вида вкладок при изменении активной вкладки
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              CustomTab(
                icon: Icons.person,
                text: 'Личные данные',
                isSelected: _tabController.index == 0,
              ),
              CustomTab(
                icon: Icons.delivery_dining,
                text: 'Способ доставки',
                isSelected: _tabController.index == 1,
              ),
              CustomTab(
                icon: Icons.payment,
                text: 'Способы оплаты',
                isSelected: _tabController.index == 2,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(
                  child: Text("Содержимое Главной вкладки"),
                ),
                Center(
                  child: Text("Содержимое Поиска вкладки"),
                ),
                Center(
                  child: Text("Содержимое Профиля вкладки"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  const CustomTab({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, // Добавьте сюда обработчик нажатия, если необходимо
      child: Column(
        children: [
          Icon(
            icon,
            color: isSelected
                ? Colors.blue
                : Colors.grey, // Цвет иконки при активации
          ),
          Text(
            text,
            style: TextStyle(
              color: isSelected
                  ? Colors.blue
                  : Colors.grey, // Цвет текста при активации
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:fanoos/base/widget/base_stateful_widget.dart';
import 'package:fanoos/ui/screen/category_screen.dart';
import 'package:fanoos/ui/screen/home_screen.dart';

class MainPage extends BaseStatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _MainPageState();
}

class _MainPageState extends BaseState<MainPage> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;
  final List<Widget> pages = [
    HomeScreen(
      key: PageStorageKey('HomeScreen'),
    ),
    CategoryScreen(
      key: PageStorageKey('CategoryScreen'),
    ),
  ];

  @override
  Widget baseBuild(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category Page'),
        ],
      );
}

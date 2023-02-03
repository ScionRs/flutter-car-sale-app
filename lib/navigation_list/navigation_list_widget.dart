import 'package:flutter/material.dart';

import '../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../favorites_screen/favorites_screen_widget.dart';
import '../redesigned_main_screen/redesigned_main_screen.dart';

class NavigationListWidget extends StatefulWidget {
  const NavigationListWidget({Key? key}) : super(key: key);

  @override
  State<NavigationListWidget> createState() => _NavigationListWidgetState();
}

class _NavigationListWidgetState extends State<NavigationListWidget> {
  int _selectedTab = 0;

  void _onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(
      () {
        _selectedTab = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          RedesignedMainScreenWidget(),
          FavoritesScreenWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _selectedTab,
        onTap: _onSelectedTab,
      ),
    );
  }
}

import 'package:car_sale_app/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class FavoritesScreenWidget extends StatefulWidget {
  const FavoritesScreenWidget({Key? key}) : super(key: key);

  @override
  State<FavoritesScreenWidget> createState() => _FavoritesScreenWidgetState();
}

class _FavoritesScreenWidgetState extends State<FavoritesScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Желаемое'),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}

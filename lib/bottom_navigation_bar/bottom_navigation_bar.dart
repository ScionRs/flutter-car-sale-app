import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [],
    );
  }
}

class HomeIcon extends StatelessWidget {
  const HomeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomNavigationBarItem(icon: Icon(Icons.home_rounded));
  }
}

BottomNavigationBarItem getItem(Icon icon, String? label) =>
    BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
    );

class FavoritesIcon extends StatelessWidget {
  const FavoritesIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBarItem(icon: null);
  }
}

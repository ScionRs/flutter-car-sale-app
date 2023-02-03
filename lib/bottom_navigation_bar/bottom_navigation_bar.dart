import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onTap;
  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    const homeIcon = Icon(Icons.home_rounded);
    const favoriteIcon = Icon(Icons.favorite_outlined);
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      items: [
        getItem(homeIcon, "Главная"),
        getItem(favoriteIcon, "Желаемое"),
      ],
    );
  }
}

BottomNavigationBarItem getItem(Icon icon, String? label) =>
    BottomNavigationBarItem(
      label: label,
      icon: icon,
    );

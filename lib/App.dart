import 'package:car_sale_app/main_screen_widget/main_screen_widget.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreenWidget(),
    );
  }
}

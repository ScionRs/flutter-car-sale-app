import 'package:car_sale_app/main_screen_widget/main_screen_widget.dart';
import 'package:car_sale_app/widgets/navigation.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}

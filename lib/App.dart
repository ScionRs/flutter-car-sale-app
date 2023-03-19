import 'package:car_market/theme/scroll_behavior.dart';
import 'package:car_market/theme/theme.dart';
import 'package:car_market/widgets/navigation.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: setTheme(),
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
      builder: (context, widget) {
        return ScrollConfiguration(
            behavior: const ScrollBehaviorModified(), child: widget!);
      },
    );
  }
}

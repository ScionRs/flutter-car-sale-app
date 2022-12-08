import 'package:car_sale_app/car_intermediate_screen_widget/car_intermediate_screen_widget.dart';
import 'package:car_sale_app/carlist_screen_widget/carlist_screen_widget.dart';
import 'package:car_sale_app/dealerlist_screen_widget/dealerlist_screen_widget.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteName {
  static const mainScreen = "/";
  static const dealerListScreen = "/dealerList";
  static const carListScreen = "/carList";
  static const carIntermediateScreen = "/carList/carIntermediate";
}

class Navigation {
  final initialRoute = MainNavigationRouteName.mainScreen;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.dealerListScreen: (context) =>
        const DealerListScreenWidget(),
  };

  Route<Object>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteName.carListScreen:
        final carCategory = settings.arguments as CarCategory;
        return MaterialPageRoute(
          builder: (context) => CarListScreenWidget(carCategory: carCategory),
        );
      case MainNavigationRouteName.carIntermediateScreen:
        final carIntermediate = settings.arguments as CarIntermediate;
        return MaterialPageRoute(
          builder: (context) =>
              CarIntermediateWidget(carIntermediate: carIntermediate),
        );
      default:
        const widget = Text("Navigation Error!!!");
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}

import 'package:car_sale_app/brandlist_screen/brandlist_screen_widget.dart';
import 'package:car_sale_app/car_individual_page/car_individual_screen_widget.dart';
import 'package:car_sale_app/car_intermediate_screen_widget/car_intermediate_screen_widget.dart';
import 'package:car_sale_app/carlist_screen_widget/carlist_screen_widget.dart';
import 'package:car_sale_app/dealerlist_screen_widget/dealerlist_screen_widget.dart';
import 'package:car_sale_app/favorites_screen/favorites_screen_widget.dart';
import 'package:car_sale_app/main_screen_widget/main_screen_widget.dart';
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/City.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/redesigned_main_screen/redesigned_main_screen.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteName {
  static const mainScreen = "main";
  static const favoritesScreen = 'favorites';
  static const dealerListScreen = "main/dealerList";
  static const brandListScreen = "main/brandList";
  static const carListScreen = "main/carList";
  static const carIntermediateScreen = "main/carList/carIntermediate";
  static const carIndividual = 'main/carIndividual';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.mainScreen;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.mainScreen: (context) =>
        BrandListScreenWidget(),
    MainNavigationRouteName.favoritesScreen: (context) =>
        const FavoritesScreenWidget(),
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
      case MainNavigationRouteName.carIndividual:
        final carIndividual = settings.arguments as Car;
        return MaterialPageRoute(
            builder: (context) => CarIndividualWidget(car: carIndividual));
      case MainNavigationRouteName.dealerListScreen:
        final city = settings.arguments as City;
        return MaterialPageRoute(
          builder: (context) => DealerListScreenWidget(city: city),
        );
      default:
        const widget = Text("Navigation Error!!!");
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}

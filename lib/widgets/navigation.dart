import 'package:flutter/material.dart';

import '../brandlist_screen/brandlist_screen_widget.dart';
import '../car_individual_page/car_individual_screen_widget.dart';
import '../car_intermediate_screen_widget/car_intermediate_screen_widget.dart';
import '../carlist_screen_widget/carlist_screen_widget.dart';
import '../dealerlist_screen_widget/dealerlist_screen_widget.dart';
import '../model/Car.dart';
import '../model/City.dart';
import '../model/car_intermediate.dart';
import '../navigation_list/navigation_list_widget.dart';

abstract class MainNavigationRouteName {
  static const navigationList = '/';
  // static const mainScreen = "/main";
  // static const favoritesScreen = '/favorites';
  static const dealerListScreen = "/dealerList";
  static const brandListScreen = "/brandList";
  static const carListScreen = "/carList";
  static const carIntermediateScreen = "/carList/carIntermediate";
  static const carIndividual = '/carIndividual';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.navigationList;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.navigationList: (context) =>
        const NavigationListWidget(),
    // MainNavigationRouteName.mainScreen: (context) =>
    //     const RedesignedMainScreenWidget(),
    MainNavigationRouteName.brandListScreen: (context) =>
        const BrandListScreenWidget(),
    // MainNavigationRouteName.favoritesScreen: (context) =>
    //     const FavoritesScreenWidget(),
  };

  Route<Object>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteName.carListScreen:
        final cars = settings.arguments as List<CarIntermediate>;
        return MaterialPageRoute(
          builder: (context) => CarListScreenWidget(cars: cars),
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

import 'package:car_sale_app/carlist_screen_widget/carlist_screen_widget.dart';
import 'package:car_sale_app/main_screen_widget/main_screen_widget.dart';
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarListScreenWidget(
        carCategory: CommonData.carCategoryList[0],
      ),
    );
  }
}

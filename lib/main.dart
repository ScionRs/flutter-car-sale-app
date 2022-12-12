import 'package:car_sale_app/App.dart';
import 'package:car_sale_app/provider/car_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  const myApp = App();
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => CarProvider()),
      ],
        child: myApp,
  ),);
}




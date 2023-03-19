
import 'package:car_market/provider/car_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'App.dart';

void main() {
  const myApp = App();
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => CarProvider()),
      ],
        child: myApp,
  ),);
}




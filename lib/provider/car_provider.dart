
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Dealer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/City.dart';
import '../model/Equipment.dart';
import '../model/maintenance_costs.dart';

class CarProvider with ChangeNotifier{

  List<Car> searchCarModel(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    return filterCarList;
  }
}


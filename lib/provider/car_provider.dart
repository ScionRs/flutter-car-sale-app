
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Dealer.dart';
import 'package:flutter/material.dart';

class CarProvider with ChangeNotifier{

  List<Car> searchCarModel(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    return filterCarList;
  }

  List<dynamic> changeColor(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    var ids = filterCarList.map((e) => e.bodyColor).toList();
    List<dynamic> distinctIds = ids.toSet().toList();
    return distinctIds;
  }

  String selectImage(List<Car> carList, String defaultValue){
      Car newValue = carList.firstWhere((e) =>
      e.bodyColor == defaultValue);
      return newValue.image;
  }
}


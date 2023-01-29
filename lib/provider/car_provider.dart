
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Dealer.dart';
import 'package:flutter/material.dart';

class CarProvider with ChangeNotifier{

  String imageCar = '';

  // Поиск выбранной модели
  List<Car> searchCarModel(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    return filterCarList;
  }

  // Поиск всех цветов данной модели
  List<dynamic> changeColor(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    var ids = filterCarList.map((e) => e.bodyColor).toList();
    List<dynamic> distinctIds = ids.toSet().toList();
    return distinctIds;
  }


  }



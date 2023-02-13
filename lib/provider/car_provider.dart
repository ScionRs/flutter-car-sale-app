
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Dealer.dart';
import 'package:flutter/material.dart';

class CarProvider with ChangeNotifier{

  String imageCar = '';
  final List<Car> _favoriteCarList = [];

  List<Car> get favoriteCarList => _favoriteCarList;
  // Поиск выбранной модели
  List<Car> searchCarModel(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    return filterCarList;
  }

  //Поиск одноклассников
  List<Car> searchCarClassmatesModel(String model, String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.bodyType == searchValue && element.model != model).toList();
    return filterCarList;
  }

  void addToFavoriteCarList(Car car){
    print('Автомобиль добавлен');
    _favoriteCarList.add(car);
    print(favoriteCarList.length);
    notifyListeners();
  }

  void removeToFavoriteCarList(Car car){
    print('Автомобиль удален');
    _favoriteCarList.remove(car);
    notifyListeners();
  }

  List<Car> giveCarList(){
    return favoriteCarList;
  }
  // Поиск всех цветов данной модели
  List<dynamic> changeColor(String searchValue){
    List<Car> filterCarList = CommonData.globalCarList.where((element) => element.model == searchValue).toList();
    var ids = filterCarList.map((e) => e.bodyColor).toList();
    List<dynamic> distinctIds = ids.toSet().toList();
    return distinctIds;
  }


  }




import 'dart:math';

import 'Car.dart';

class CarIntermediate{
  String id;
  List<Car> carList;

  CarIntermediate({required this.id,required this.carList});

  factory CarIntermediate.fromJson(Map<String, dynamic> parsedJson){
    var carsListSize = parsedJson['carList'] as List;
    List<Car> carJsonList = carsListSize.map((e) => Car.fromJson(e)).toList();
    return CarIntermediate(
        id: parsedJson['_id'],
        carList: carJsonList
    );
  }

  String giveCarImage(){
    return carList[0].image;
  }

  String giveCarBrand(){
    return carList[0].brand;
  }

  String giveCarModel(){
    return carList[0].model;
  }
  
  int giveMaxPriceFromCar(){
    var value = carList.first;
    carList.forEach((element) {
     if(element.price > value.price){
       value = element;
     }
    });
    return value.price;
  }

  int giveExpMaxPriceFromCar() => carList.map((e) => e.price).reduce(max);

  int giveMinPriceFromCar() => carList.map((e) => e.price).reduce(min);

}
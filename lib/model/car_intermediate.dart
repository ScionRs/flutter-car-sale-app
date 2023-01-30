
import 'dart:math';

import 'Car.dart';

class CarIntermediate{
  String id;
  String brand;
  String model;
  String image;
  String description;

  CarIntermediate({required this.id,required this.brand,required this.model, required this.image, required this.description});

  factory CarIntermediate.fromJson(Map<String, dynamic> parsedJson){
    return CarIntermediate(
        id: parsedJson['_id'],
        brand: parsedJson['brand'],
        model: parsedJson['model'],
        image: parsedJson['image'],
        description: parsedJson['description']
    );
  }

  /*
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
*/
}
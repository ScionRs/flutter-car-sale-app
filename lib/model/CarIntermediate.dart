
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
}

import 'package:car_sale_app/model/Car.dart';

class CarCategory{
  final String id;
  final String name;
  final List<Car> cars;

  CarCategory({required this.id,required this.name,required this.cars});

  factory CarCategory.fromJson(Map<String, dynamic> parsedJson){
    var carsListSize = parsedJson['size'] as List;
    List<Car> carJsonList = carsListSize.map((e) => Car.fromJson(e)).toList();
    return CarCategory(
        id: parsedJson['_id'],
        name: parsedJson['name'],
        cars: carJsonList
    );
  }
}
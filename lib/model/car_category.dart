
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/car_intermediate.dart';

class CarCategory{
  final String id;
  final String name;
  final String image;
  final List<CarIntermediate> cars;

  CarCategory({required this.id,required this.name,required this.image, required this.cars});

  factory CarCategory.fromJson(Map<String, dynamic> parsedJson){
    var carsListSize = parsedJson['cars'] as List;
    List<CarIntermediate> carJsonList = carsListSize.map((e) => CarIntermediate.fromJson(e)).toList();
    return CarCategory(
        id: parsedJson['_id'],
        name: parsedJson['name'],
        image: parsedJson['image'],
        cars: carJsonList
    );
  }
}
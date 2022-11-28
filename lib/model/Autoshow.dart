
import 'package:car_sale_app/model/Car.dart';

class AutoShow{
  final String id;
  final String name;
  final String address;
  final List<Car> carList;

  AutoShow({required this.id,required this.name,required this.address,required this.carList});

  factory AutoShow.fromJson(Map<String, dynamic> parsedJson){
    var carListFromJson = parsedJson['carList'] as List;
    List<Car> carListParsed = carListFromJson.map((e) => Car.fromJson(e)).toList();
    return AutoShow(
      id: parsedJson['_id'],
      name: parsedJson['brand'],
      address: parsedJson['model'],
      carList: carListParsed,
    );
  }
}
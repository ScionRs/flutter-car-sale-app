import 'package:car_sale_app/model/Car.dart';

class Dealer {
  final String id;
  final String image;
  final String name;
  final String address;
  final List<Car> carList;

  Dealer(
      {required this.id,
      required this.image,
      required this.name,
      required this.address,
      required this.carList});

  factory Dealer.fromJson(Map<String, dynamic> parsedJson) {
    var carListFromJson = parsedJson['carList'] as List;
    List<Car> carListParsed =
        carListFromJson.map((e) => Car.fromJson(e)).toList();
    return Dealer(
      id: parsedJson['_id'],
      image: parsedJson['image'],
      name: parsedJson['brand'],
      address: parsedJson['model'],
      carList: carListParsed,
    );
  }
}

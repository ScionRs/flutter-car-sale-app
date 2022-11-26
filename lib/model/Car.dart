

import 'Equipment.dart';

class Car{
  final int id;
  final String brand;
  final String model;
  final int price;
  final String bodyColor;
  // Год создания
  final int productionYear;
  // Тип кузова: Седан, Хэтчбек и тд
  final String bodyType;
  final String transmission;
  //Тип двигателя: Бензиновый,Дизельный
  final String engineType;
  //Обьем двигателя
  final double engineVolume;
  final List<Equipment> equipment;

  Car({
     required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.bodyColor,
    required this.productionYear,
    required this.bodyType,
    required this.transmission,
    required this.engineType,
    required this.engineVolume,
    required this.equipment });
}
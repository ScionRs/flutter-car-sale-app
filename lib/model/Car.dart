

import 'Equipment.dart';
import 'maintenance_costs.dart';

class Car{
  final String id;
  final String brand;
  final String model;
  final String image;
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
  // Комплектация
  Equipment equipment;
  // Затраты на обслуживание
  MaintenanceCosts maintenanceCosts;

  Car({
     required this.id,
    required this.brand,
    required this.model,
    required this.image,
    required this.price,
    required this.bodyColor,
    required this.productionYear,
    required this.bodyType,
    required this.transmission,
    required this.engineType,
    required this.engineVolume,
    required this.equipment,
    required this.maintenanceCosts
  });


  @override
  String toString() {
    return 'Car{id: $id, brand: $brand, model: $model, image: $image, price: $price, bodyColor: $bodyColor, productionYear: $productionYear, bodyType: $bodyType, transmission: $transmission, engineType: $engineType, engineVolume: $engineVolume, equipment: $equipment, maintenanceCosts: $maintenanceCosts}';
  }

  factory Car.fromJson(Map<String, dynamic> parsedJson){
    return Car(
        id: parsedJson['_id'],
        brand: parsedJson['brand'],
        model: parsedJson['model'],
        image: parsedJson['image'],
        price: parsedJson['price'],
        bodyColor: parsedJson['bodyColor'],
        productionYear: parsedJson['productionYear'],
        bodyType: parsedJson['bodyType'],
        transmission: parsedJson['transmission'],
        engineType: parsedJson['engineType'],
        engineVolume: parsedJson['engineVolume'],
        equipment: parsedJson['equipment'],
        maintenanceCosts: parsedJson['maintenanceCosts'],
    );
  }
}
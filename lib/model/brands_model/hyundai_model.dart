import 'package:car_sale_app/app_values/app_images.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Equipment.dart';
import 'package:car_sale_app/model/maintenance_costs.dart';

abstract class HyundaiModel {
  static Car hyundaiElantraGrey = Car(
    id: '4',
    brand: 'Hyundai',
    model: 'Elantra',
    image: AppImages.hyundaiElantraGrey,
    price: 2782150,
    bodyColor: 'Темно-серый',
    productionYear: 2022,
    bodyType: 'Седан',
    transmission: 'АКПП',
    engineType: 'Бензиновый',
    engineVolume: 1.6,
    equipment: Equipment(
      id: '4',
      title: 'New 1,6 AT Style+Multimedia ',
      seatUpholstery: 'Alcantara',
      heatedSeats: 'Подогрев передних сидений',
      airbags: '6 подушек',
      onBoardComputer: 'Маршрутный компьютер',
      horsePower: 128,
      maxTorque: 158,
      typeOfFuel: 'Бензиновый',
      accelerationTime: 11.3,
      maxSpeed: 195,
      airConditioningSystem: 'Климат контроль',
      multifunctionSteeringWheel:
          'Многофункциональный кожаный руль с функция пере',
      fuelTankVolume: 50,
      centralLocking:
          'Центральный замок с дистанционным управлением без функции Safelock',
      trunkVolume: '425',
      driveUnit: 'Передний',
      additionalOptions: [
        'Дополнительный стоп-сигнал',
        'Индикатор низкого уровня омывающей жидкости',
        'Система Эра-Глонасс',
      ],
    ),
    maintenanceCosts: MaintenanceCosts(
      id: '4',
      typeOfFuel: 'аи-92',
      fuelConsumptionUrbanCycle: 9.4,
      extraUrbanFuelConsumption: 5.5,
      combinedFuelConsumption: 6.9,
      travelDistance: 420,
      horsePower: 128,
      price: 2782150,
    ),
  );
}

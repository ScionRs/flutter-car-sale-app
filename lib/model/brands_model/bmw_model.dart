import 'package:car_sale_app/app_values/app_images.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Equipment.dart';
import 'package:car_sale_app/model/maintenance_costs.dart';

abstract class BmwModel {
  static Car bmwX5White = Car(
    id: '3',
    brand: 'BMW',
    model: 'X5',
    image: AppImages.bmwX5White,
    price: 7480000,
    bodyColor: 'Белый минерал',
    productionYear: 2022,
    bodyType: 'Внедорожник',
    transmission: 'АКПП',
    engineType: 'Дизельный',
    engineVolume: 3.0,
    equipment: Equipment(
      id: '3',
      title: 'xDrive30d M Sport Pro',
      seatUpholstery: 'Merino',
      heatedSeats: 'Подогрев передних сидений',
      airbags: '6 подушек',
      onBoardComputer: 'BMW Live Cockpit Professional',
      horsePower: 249,
      maxTorque: 620,
      typeOfFuel: 'Дизельный',
      accelerationTime: 6.8,
      maxSpeed: 226,
      airConditioningSystem: 'Климат контроль',
      multifunctionSteeringWheel: 'Многофункциональный кожаный руль',
      fuelTankVolume: 80,
      centralLocking:
          'Центральный замок с дистанционным управлением без функции Safelock',
      trunkVolume: '650',
      driveUnit: 'Полный',
      additionalOptions: [
        'Интерактивный ключ BMW Display Key',
        'Пакет xOffroad',
        'Панорамная стеклянная крыша Sky Lounge',
        'Teleservices',
      ],
    ),
    maintenanceCosts: MaintenanceCosts(
      id: '3',
      typeOfFuel: '-',
      fuelConsumptionUrbanCycle: 7.2,
      extraUrbanFuelConsumption: 6.8,
      combinedFuelConsumption: 7.2,
      travelDistance: 620,
      horsePower: 249,
      price: 7480000,
    ),
  );

  static Car bmwX5Black = Car(
    id: '3',
    brand: 'BMW',
    model: 'X5',
    image: AppImages.bmwX5Black,
    price: 10120000,
    bodyColor: 'Черный сапфир',
    productionYear: 2021,
    bodyType: 'Внедорожник',
    transmission: 'АКПП',
    engineType: 'Дизельный',
    engineVolume: 3.0,
    equipment: Equipment(
      id: '3',
      title: 'M50d M Special',
      seatUpholstery: 'Merino',
      heatedSeats: 'Подогрев передних сидений',
      airbags: '6 подушек',
      onBoardComputer: 'BMW Live Cockpit Professional',
      horsePower: 400,
      maxTorque: 750,
      typeOfFuel: 'Дизельный',
      accelerationTime: 5.2,
      maxSpeed: 250,
      airConditioningSystem: 'Климат контроль',
      multifunctionSteeringWheel: 'Многофункциональный кожаный руль',
      fuelTankVolume: 80,
      centralLocking:
          'Центральный замок с дистанционным управлением без функции Safelock',
      trunkVolume: '650',
      driveUnit: 'Полный',
      additionalOptions: [
        'Интерактивный ключ BMW Display Key',
        'Пакет xOffroad',
        'Панорамная стеклянная крыша Sky Lounge',
        'Teleservices',
      ],
    ),
    maintenanceCosts: MaintenanceCosts(
      id: '3',
      typeOfFuel: '-',
      fuelConsumptionUrbanCycle: 8.6,
      extraUrbanFuelConsumption: 7.3,
      combinedFuelConsumption: 7.8,
      travelDistance: 620,
      horsePower: 400,
      price: 15120000,
    ),
  );

  static Car bmwX5Blue = Car(
    id: '3',
    brand: 'BMW',
    model: 'X5',
    image: AppImages.bmwX5Blue,
    price: 7550000,
    bodyColor: 'Cиний фитоник',
    productionYear: 2021,
    bodyType: 'Внедорожник',
    transmission: 'АКПП',
    engineType: 'Дизельный',
    engineVolume: 3.0,
    equipment: Equipment(
      id: '3',
      title: 'xDrive30d M Sport Pro',
      seatUpholstery: 'Merino',
      heatedSeats: 'Подогрев передних сидений',
      airbags: '6 подушек',
      onBoardComputer: 'BMW Live Cockpit Professional',
      horsePower: 249,
      maxTorque: 620,
      typeOfFuel: 'Дизельный',
      accelerationTime: 6.8,
      maxSpeed: 226,
      airConditioningSystem: 'Климат контроль',
      multifunctionSteeringWheel: 'Многофункциональный кожаный руль',
      fuelTankVolume: 80,
      centralLocking:
          'Центральный замок с дистанционным управлением без функции Safelock',
      trunkVolume: '650',
      driveUnit: 'Полный',
      additionalOptions: [
        'Интерактивный ключ BMW Display Key',
        'Пакет xOffroad',
        'Панорамная стеклянная крыша Sky Lounge',
        'Teleservices',
      ],
    ),
    maintenanceCosts: MaintenanceCosts(
      id: '3',
      typeOfFuel: '-',
      fuelConsumptionUrbanCycle: 7.2,
      extraUrbanFuelConsumption: 6.8,
      combinedFuelConsumption: 7.2,
      travelDistance: 620,
      horsePower: 249,
      price: 7550000,
    ),
  );
}
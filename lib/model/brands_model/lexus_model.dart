import 'package:car_sale_app/app_values/app_images.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Equipment.dart';
import 'package:car_sale_app/model/maintenance_costs.dart';

abstract class LexusModel {
  static Car lexusLxBlack = Car(
    id: '5',
    brand: 'Lexus',
    model: 'LX',
    image: AppImages.lexusLxBlack,
    price: 18490000,
    bodyColor: 'Черный',
    productionYear: 2021,
    bodyType: 'Внедорожник',
    transmission: 'АКПП',
    engineType: 'Дизельный',
    engineVolume: 1.4,
    equipment: Equipment(
      id: '5',
      title: '450D 7D (Executive 2)',
      seatUpholstery: 'Semi-aniline',
      heatedSeats: 'Подогрев передних и задних сидений',
      airbags: '6 подушек',
      onBoardComputer: 'Маршрутный компьютер',
      horsePower: 272,
      maxTorque: 650,
      typeOfFuel: 'Дизельный',
      accelerationTime: 9,
      maxSpeed: 210,
      airConditioningSystem: 'Климат контроль',
      multifunctionSteeringWheel:
          'Мультифункциональное рулевое колесо с кожаной отделкой и вставками из дерева',
      fuelTankVolume: 50,
      centralLocking:
          'Центральный замок с дистанционным управлением и двойной блокировкой',
      trunkVolume: '1276',
      driveUnit: 'Полный',
      additionalOptions: [
        'Задний спойлер',
        'Потолочные воздуховоды для задних пассажиров',
        'Система комфортной посадки водителя',
      ],
    ),
    maintenanceCosts: MaintenanceCosts(
      id: '5',
      typeOfFuel: '-',
      fuelConsumptionUrbanCycle: 11.2,
      extraUrbanFuelConsumption: 8.5,
      combinedFuelConsumption: 9.5,
      travelDistance: 765,
      horsePower: 272,
      price: 18490000,
    ),
  );

  static Car lexusLxGrey = Car(
    id: '5',
    brand: 'Lexus',
    model: 'LX',
    image: AppImages.lexusLxGrey,
    price: 18490000,
    bodyColor: 'Cветло-серый металлик',
    productionYear: 2021,
    bodyType: 'Внедорожник',
    transmission: 'АКПП',
    engineType: 'Дизельный',
    engineVolume: 1.4,
    equipment: Equipment(
      id: '5',
      title: '450D 7D (Executive 2)',
      seatUpholstery: 'Semi-aniline',
      heatedSeats: 'Подогрев передних и задних сидений',
      airbags: '6 подушек',
      onBoardComputer: 'Маршрутный компьютер',
      horsePower: 272,
      maxTorque: 650,
      typeOfFuel: 'Дизельный',
      accelerationTime: 9,
      maxSpeed: 210,
      airConditioningSystem: 'Климат контроль',
      multifunctionSteeringWheel:
          'Мультифункциональное рулевое колесо с кожаной отделкой и вставками из дерева',
      fuelTankVolume: 50,
      centralLocking:
          'Центральный замок с дистанционным управлением и двойной блокировкой',
      trunkVolume: '1276',
      driveUnit: 'Полный',
      additionalOptions: [
        'Задний спойлер',
        'Потолочные воздуховоды для задних пассажиров',
        'Система комфортной посадки водителя',
      ],
    ),
    maintenanceCosts: MaintenanceCosts(
      id: '5',
      typeOfFuel: '-',
      fuelConsumptionUrbanCycle: 11.2,
      extraUrbanFuelConsumption: 8.5,
      combinedFuelConsumption: 9.5,
      travelDistance: 765,
      horsePower: 272,
      price: 18490000,
    ),
  );
}

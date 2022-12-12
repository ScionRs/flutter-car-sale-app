
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/Dealer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/City.dart';
import '../model/Equipment.dart';
import '../model/maintenance_costs.dart';

class CarProvider with ChangeNotifier{

  List<Car> searchCarModel(String searchValue){
    /*var templateValue = CommonData.listOfCities;
    List<Dealer> dealerList = templateValue.map((e) => e.autoShowList).toList();*/
    /*_foodList.where((food) => food.name.toLowerCase().contains(userInputValue.toLowerCase()).toList();*/
    /*List<City> cityList = CommonData.listOfCities.map((e) => e).toList();
    List<Dealer> dealerList = cityList.map((e) => e.autoShowList.map((c) => c).toList()).cast<Dealer>().toList();
    List<Car> carListModel = dealerList.map((e) => e.carList).cast<Car>().toList();
    print(carListModel.where((element) => element.model == searchValue).toList());
    return carListModel.where((element) => element.model == searchValue).toList();*/

    
    List<Car> carList = [
      Car(
          id: '1',
          brand: 'Mazda',
          model: 'Cx-5',
          image:
          'https://www.tts.ru/upload/iblock/91d/mazda-cx-5-vnedorozhnik-seryy-0.jpg',
          price: 3202964,
          bodyColor: 'Красный',
          productionYear: 2022,
          bodyType: 'Кроссовер',
          transmission: 'АКПП',
          engineType: 'Бензин',
          engineVolume: 2.0,
          equipment: Equipment(
              id: '1',
              title: 'Mazda CX-5 ACTIV 2.0AT 2WD KGB4914 <2019>',
              seatUpholstery: 'Alcantara',
              heatedSeats: 'Подогрев передних сидений',
              airbags: '7 подушек безопасности',
              onBoardComputer: 'Маршрутный компьютер',
              horsePower: 149,
              maxTorque: 208,
              typeOfFuel: 'Бензин',
              accelerationTime: 10.3,
              maxSpeed: 200,
              airConditioningSystem: '2-х зонный',
              multifunctionSteeringWheel:
              'Управление аудиосистемой на рулевом колесе',
              fuelTankVolume: 58,
              centralLocking:
              'Центральный замок с дистанционным управлением',
              trunkVolume: '442',
              driveUnit: 'Передний',
              additionalOptions: [
                'Автоматическая блокировка дверных замков при начале движения',
                'Электронный стояночный тормоз',
                'Система Эра-Глонасс',
              ]),
          maintenanceCosts: MaintenanceCosts(
              id: '1',
              typeOfFuel: 'аи-95',
              fuelConsumptionUrbanCycle: 8.9,
              extraUrbanFuelConsumption: 6.2,
              combinedFuelConsumption: 7.2,
              travelDistance: 590,
              horsePower: 149,
              price: 3202964)),
      Car(
          id: '1',
          brand: 'Mazda',
          model: 'Cx-5',
          image:
          'https://www.tts.ru/upload/iblock/91d/mazda-cx-5-vnedorozhnik-seryy-0.jpg',
          price: 3202964,
          bodyColor: 'Красный',
          productionYear: 2022,
          bodyType: 'Кроссовер',
          transmission: 'АКПП',
          engineType: 'Бензин',
          engineVolume: 2.0,
          equipment: Equipment(
              id: '1',
              title: 'Mazda CX-5 ACTIV 2.0AT 2WD KGB4914 <2019>',
              seatUpholstery: 'Alcantara',
              heatedSeats: 'Подогрев передних сидений',
              airbags: '7 подушек безопасности',
              onBoardComputer: 'Маршрутный компьютер',
              horsePower: 149,
              maxTorque: 208,
              typeOfFuel: 'Бензин',
              accelerationTime: 10.3,
              maxSpeed: 200,
              airConditioningSystem: '2-х зонный',
              multifunctionSteeringWheel:
              'Управление аудиосистемой на рулевом колесе',
              fuelTankVolume: 58,
              centralLocking:
              'Центральный замок с дистанционным управлением',
              trunkVolume: '442',
              driveUnit: 'Передний',
              additionalOptions: [
                'Автоматическая блокировка дверных замков при начале движения',
                'Электронный стояночный тормоз',
                'Система Эра-Глонасс',
              ]),
          maintenanceCosts: MaintenanceCosts(
              id: '1',
              typeOfFuel: 'аи-95',
              fuelConsumptionUrbanCycle: 8.9,
              extraUrbanFuelConsumption: 6.2,
              combinedFuelConsumption: 7.2,
              travelDistance: 590,
              horsePower: 149,
              price: 3202964)),
      Car(
          id: '1',
          brand: 'Mazda',
          model: 'Cx-7',
          image:
          'https://www.tts.ru/upload/iblock/91d/mazda-cx-5-vnedorozhnik-seryy-0.jpg',
          price: 3202964,
          bodyColor: 'Красный',
          productionYear: 2022,
          bodyType: 'Кроссовер',
          transmission: 'АКПП',
          engineType: 'Бензин',
          engineVolume: 2.0,
          equipment: Equipment(
              id: '1',
              title: 'Mazda CX-5 ACTIV 2.0AT 2WD KGB4914 <2019>',
              seatUpholstery: 'Alcantara',
              heatedSeats: 'Подогрев передних сидений',
              airbags: '7 подушек безопасности',
              onBoardComputer: 'Маршрутный компьютер',
              horsePower: 149,
              maxTorque: 208,
              typeOfFuel: 'Бензин',
              accelerationTime: 10.3,
              maxSpeed: 200,
              airConditioningSystem: '2-х зонный',
              multifunctionSteeringWheel:
              'Управление аудиосистемой на рулевом колесе',
              fuelTankVolume: 58,
              centralLocking:
              'Центральный замок с дистанционным управлением',
              trunkVolume: '442',
              driveUnit: 'Передний',
              additionalOptions: [
                'Автоматическая блокировка дверных замков при начале движения',
                'Электронный стояночный тормоз',
                'Система Эра-Глонасс',
              ]),
          maintenanceCosts: MaintenanceCosts(
              id: '1',
              typeOfFuel: 'аи-95',
              fuelConsumptionUrbanCycle: 8.9,
              extraUrbanFuelConsumption: 6.2,
              combinedFuelConsumption: 7.2,
              travelDistance: 590,
              horsePower: 149,
              price: 3202964)),
    ];
    List<Car> filterCarList = carList.where((element) => element.model == searchValue).toList();
    return filterCarList;
  }

}

import 'package:car_sale_app/model/Autoshow.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/City.dart';
import 'package:car_sale_app/model/Equipment.dart';
import 'package:car_sale_app/model/maintenance_costs.dart';

class CommonData{
  static final listOfCities = [
    City(id: '1',
        name: 'Москва',
        autoShowList: [
          AutoShow(id: '1',
              name: 'Автосалон Mazda',
              address: 'ул.Пильменная,23',
              carList:  [
                Car(id: '1',
                    brand: 'Mazda',
                    model: 'Cx-5',
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
                        maxSpeed: '200',
                        airConditioningSystem: '2-х зонный',
                        multifunctionSteeringWheel: 'Управление аудиосистемой на рулевом колесе',
                        fuelTankVolume: 58,
                        centralLocking: 'Центральный замок с дистанционным управлением',
                        trunkVolume: '442',
                        driveUnit: 'Передний',
                        additionalOptions: [
                          'Автоматическая блокировка дверных замков при начале движения',
                          'Электронный стояночный тормоз',
                          'Система Эра-Глонасс',
                        ]),
                    maintenanceCosts:
                      MaintenanceCosts(id: '1',
                          typeOfFuel: 'аи-95',
                          fuelConsumptionUrbanCycle: 8.9,
                          extraUrbanFuelConsumption: 6.2,
                          combinedFuelConsumption: 7.2,
                          travelDistance: 590,
                          horsePower: 149,
                          price: 3202964)
                    ),
              ])
        ])
  ];
}
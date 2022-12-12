import 'package:car_sale_app/model/Dealer.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/City.dart';
import 'package:car_sale_app/model/Equipment.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/model/maintenance_costs.dart';

class CommonData {
  static final listOfCities = [
    City(id: '1', name: 'Москва', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Нижнекамск', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Казань', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Екатеринбург', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Новосибирск', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Москва', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Москва', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ]),
    City(id: '1', name: 'Москва', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
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
          ])
    ])
  ];

  static var carCategoryList = [
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
              Car(
                  id: '1',
                  brand: 'Mazda',
                  model: 'Cx-5',
                  image:
                      'https://www.tts.ru/upload/iblock/91d/mazda-cx-5-vnedorozhnik-seryy-0.jpg',
                  price: 3002964,
                  bodyColor: 'Серый',
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
                      'https://www.tts.ru/upload/iblock/491/mazda-cx-5-vnedorozhnik-krasnyy-bordovyy-rozovyy-0.jpg',
                  price: 3102964,
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
                      'https://www.tts.ru/upload/iblock/60c/mazda-cx-5-vnedorozhnik-belyy-0.jpg',
                  price: 3102964,
                  bodyColor: 'Белый',
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
                      'https://www.tts.ru/upload/iblock/ec9/mazda-cx-5-vnedorozhnik-chernyy-0.jpg',
                  price: 3202964,
                  bodyColor: 'Черный',
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
            ],
          ),
          CarIntermediate(
            id: '1',
            carList: [
              Car(
                  id: '1',
                  brand: 'Mazda',
                  model: 'Cx-7',
                  image:
                      'https://www.tts.ru/upload/iblock/563/mazda-cx-9-vnedorozhnik-belyy-0.jpg',
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
            ],
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
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
                      price: 3202964))
            ],
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
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
                      price: 3202964))
            ],
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
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
                      price: 3202964))
            ],
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
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
                      price: 3202964))
            ],
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
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
                      price: 3202964))
            ],
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
            id: '1',
            carList: [
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
                      price: 3202964))
            ],
          ),
        ]),
  ];
}

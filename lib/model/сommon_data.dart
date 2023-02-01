import 'package:car_sale_app/app_values/app_images.dart';
import 'package:car_sale_app/model/Dealer.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/model/City.dart';
import 'package:car_sale_app/model/Equipment.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/model/maintenance_costs.dart';

class CommonData {

  static List<Car> globalCarList = [
    mazdaCx5Grey1,
    mazdaCx5Red1,
    mazdaCx5White1,
    mazdaCx5Black1,
  ];

  static Car mazdaCx5Grey1 =  Car(
      id: '1',
      brand: 'Mazda',
      model: 'Cx-5',
      image:
      AppImages.mazda_cx_5_grey,
      price: 3202964,
      bodyColor: 'Серый',
      productionYear: 2022,
      bodyType: 'Кроссовер',
      transmission: 'АКПП',
      engineType: 'Бензин',
      engineVolume: 2.0,
      equipment: Equipment(
          id: '1',
          title: 'DRIVE 2WD',
          seatUpholstery: 'Alcantara',
          heatedSeats: 'Подогрев передних сидений',
          airbags: '7 подушек',
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
          price: 3202964));

  static Car mazdaCx5Red1 =  Car(
      id: '1',
      brand: 'Mazda',
      model: 'Cx-5',
      image:
        AppImages.mazda_cx_5_pink,
      price: 3102964,
      bodyColor: 'Красный',
      productionYear: 2022,
      bodyType: 'Кроссовер',
      transmission: 'АКПП',
      engineType: 'Бензин',
      engineVolume: 2.0,
      equipment: Equipment(
          id: '1',
          title: 'ACTIVE 2WD/4WD',
          seatUpholstery: 'Alcantara',
          heatedSeats: 'Подогрев передних сидений',
          airbags: '7 подушек',
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
          price: 3202964));

  static Car mazdaCx5White1 = Car(
      id: '1',
      brand: 'Mazda',
      model: 'Cx-5',
      image: AppImages.mazda_cx_5_white,
      price: 3102964,
      bodyColor: 'Белый',
      productionYear: 2022,
      bodyType: 'Кроссовер',
      transmission: 'АКПП',
      engineType: 'Бензин',
      engineVolume: 2.0,
      equipment: Equipment(
          id: '1',
          title: 'Supreme 4WD',
          seatUpholstery: 'Alcantara',
          heatedSeats: 'Подогрев передних сидений',
          airbags: '7 подушек',
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
          price: 3202964));

  static Car mazdaCx5Black1 = Car(
      id: '1',
      brand: 'Mazda',
      model: 'Cx-5',
      image: AppImages.mazda_cx_5_black,
      price: 3202964,
      bodyColor: 'Черный',
      productionYear: 2022,
      bodyType: 'Кроссовер',
      transmission: 'АКПП',
      engineType: 'Бензин',
      engineVolume: 2.0,
      equipment: Equipment(
          id: '1',
          title: 'Executive 4WD',
          seatUpholstery: 'Alcantara',
          heatedSeats: 'Подогрев передних сидений',
          airbags: '7 подушек',
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
          price: 3202964));


  static final listOfCities = [
    City(id: '1', name: 'Москва', autoShowList: [
      Dealer(
          id: '1',
          image:
              "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg",
          name: 'Автосалон Mazda',
          address: 'ул.Пильменная,23',
          carList: [
            mazdaCx5Grey1,
            mazdaCx5Red1,
            mazdaCx5Grey1,
            mazdaCx5Black1
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
                    AppImages.mazda_cx_5_black,
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
                     AppImages.mazda_cx_5_grey,
                price: 3202964,
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
                    AppImages.mazda_cx_5_pink,
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
            brand: 'Mazda',
            model: 'Cx-5',
              image: AppImages.mazda_cx_5_grey,
              description: "Новый Mazda CX-5 сочетает в себе элегантный дизайн с впечатляющей функциональностью и высоким уровнем безопасности. Экстерьер кроссовера следует концепции KODO душа, раскрывающей в этом автомобиле гармоничные пропорции и мускулистые округлые поверхности. Второе поколение Mazda CX-5 сохранило практически в неизменном виде габаритные характеристики предшественника и заметно эволюционировало не только в дизайне, но и в технологиях. Так, например, кроссовер оборудован комплексной системой G-Vectoring Control для помощи водителю, обеспечивающей более эффективное и безопасное вождение на программном уровне. Кроме того, на новом Mazda CX-5 появилась система i-Activsense, следящая за мёртвыми зонами, разметкой и отслеживающая информацию с датчиков парковки, давления шин и камеры заднего вида.Во втором поколении Mazda CX-5 инженеры повысили жесткость кузова на 15,5%, увеличена доля высокопрочных сталей, также существенно снижен уровень проникновения шума в салон. Моторную гамму в Mazda оставили без изменений - это бензиновые двигатели Skyactiv-G 2.0 и 2.5 л, a также дизель 2.2-литра Skyactiv-D. Все силовые установки совмещаются с 6-диапазонной автоматикой. Предусмотрена система полного привода i-Active, предупреждающая проскальзывание передних колес. Пересмотренная эргономика кроссовера закономерно стала лучше, в центре торпедо появился выступающий дисплей, а приборная панель теперь располагает цветным информационным монитором 4.6 дюйма. В качестве опции предлагается аудиосистема BOSE с 10-ю динамиками, основанная на программной платформе Aha by Harman, предоставляющей доступ к медийному контенту."),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
              id: '1',
              brand: 'Mazda',
              model: 'Cx-5',
              image: AppImages.mazda_cx_5_grey,
              description: "Новый Mazda CX-5 сочетает в себе элегантный дизайн с впечатляющей функциональностью и высоким уровнем безопасности. Экстерьер кроссовера следует концепции KODO душа, раскрывающей в этом автомобиле гармоничные пропорции и мускулистые округлые поверхности. Второе поколение Mazda CX-5 сохранило практически в неизменном виде габаритные характеристики предшественника и заметно эволюционировало не только в дизайне, но и в технологиях. Так, например, кроссовер оборудован комплексной системой G-Vectoring Control для помощи водителю, обеспечивающей более эффективное и безопасное вождение на программном уровне. Кроме того, на новом Mazda CX-5 появилась система i-Activsense, следящая за мёртвыми зонами, разметкой и отслеживающая информацию с датчиков парковки, давления шин и камеры заднего вида.Во втором поколении Mazda CX-5 инженеры повысили жесткость кузова на 15,5%, увеличена доля высокопрочных сталей, также существенно снижен уровень проникновения шума в салон. Моторную гамму в Mazda оставили без изменений - это бензиновые двигатели Skyactiv-G 2.0 и 2.5 л, a также дизель 2.2-литра Skyactiv-D. Все силовые установки совмещаются с 6-диапазонной автоматикой. Предусмотрена система полного привода i-Active, предупреждающая проскальзывание передних колес. Пересмотренная эргономика кроссовера закономерно стала лучше, в центре торпедо появился выступающий дисплей, а приборная панель теперь располагает цветным информационным монитором 4.6 дюйма. В качестве опции предлагается аудиосистема BOSE с 10-ю динамиками, основанная на программной платформе Aha by Harman, предоставляющей доступ к медийному контенту."
          ),
        ]),
    CarCategory(
        id: '1',
        name: 'Mazda',
        image: 'https://www.tts.ru/upload/iblock/b57/mazda_logo.png',
        cars: [
          CarIntermediate(
              id: '1',
              brand: 'Mazda',
              model: 'Cx-5',
              image: AppImages.mazda_cx_5_grey,
              description: "Новый Mazda CX-5 сочетает в себе элегантный дизайн с впечатляющей функциональностью и высоким уровнем безопасности. Экстерьер кроссовера следует концепции KODO душа, раскрывающей в этом автомобиле гармоничные пропорции и мускулистые округлые поверхности. Второе поколение Mazda CX-5 сохранило практически в неизменном виде габаритные характеристики предшественника и заметно эволюционировало не только в дизайне, но и в технологиях. Так, например, кроссовер оборудован комплексной системой G-Vectoring Control для помощи водителю, обеспечивающей более эффективное и безопасное вождение на программном уровне. Кроме того, на новом Mazda CX-5 появилась система i-Activsense, следящая за мёртвыми зонами, разметкой и отслеживающая информацию с датчиков парковки, давления шин и камеры заднего вида.Во втором поколении Mazda CX-5 инженеры повысили жесткость кузова на 15,5%, увеличена доля высокопрочных сталей, также существенно снижен уровень проникновения шума в салон. Моторную гамму в Mazda оставили без изменений - это бензиновые двигатели Skyactiv-G 2.0 и 2.5 л, a также дизель 2.2-литра Skyactiv-D. Все силовые установки совмещаются с 6-диапазонной автоматикой. Предусмотрена система полного привода i-Active, предупреждающая проскальзывание передних колес. Пересмотренная эргономика кроссовера закономерно стала лучше, в центре торпедо появился выступающий дисплей, а приборная панель теперь располагает цветным информационным монитором 4.6 дюйма. В качестве опции предлагается аудиосистема BOSE с 10-ю динамиками, основанная на программной платформе Aha by Harman, предоставляющей доступ к медийному контенту."
          ),
        ]),
  ];
}

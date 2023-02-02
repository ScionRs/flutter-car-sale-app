
class MaintenanceCosts{
  String id;
  // Тип топлива
  String typeOfFuel;
  // Расход в городском цикле
  final double fuelConsumptionUrbanCycle;
  // Расход в режиме трассы
  final double extraUrbanFuelConsumption;
  // Расход в комбинированном режиме
  final double combinedFuelConsumption;
  // Дальность поездки
  final int travelDistance;
  // мощность
  final int horsePower;
  // цена автомобиля
  final int price;

  MaintenanceCosts({
      required this.id,
    required this.typeOfFuel,
    required this.fuelConsumptionUrbanCycle,
    required this.extraUrbanFuelConsumption,
    required this.combinedFuelConsumption,
    required this.travelDistance,
    required this.horsePower,
    required this.price
  });

  factory MaintenanceCosts.fromJson(Map<String, dynamic> parsedJson){
    return MaintenanceCosts(
      id: parsedJson['_id'],
      typeOfFuel: parsedJson['typeOfFuel'],
      fuelConsumptionUrbanCycle: parsedJson['fuelConsumptionUrbanCycle'],
      extraUrbanFuelConsumption: parsedJson['extraUrbanFuelConsumption'],
      combinedFuelConsumption: parsedJson['combinedFuelConsumption'],
      travelDistance: parsedJson['travelDistance'],
      horsePower: parsedJson['horsePower'],
      price: parsedJson['price'],
    );
  }

  // Стоимость на 100км в выбранном цикле
   double calculateCycle(String compareValue, double customValue){
    if (compareValue.toLowerCase() == "аи-95") {
      double finalPrice = customValue * 52.79;
      return finalPrice;
    } else if(compareValue.toLowerCase() == "аи-92"){
      double finalPrice = customValue * 47.26;
      return finalPrice;
    } else if (compareValue.toLowerCase() == "аи-98"){
      double finalPrice = customValue * 64.09;
      return finalPrice;
    } else if (compareValue.toLowerCase() == "дт"){
      double finalPrice = customValue * 56.30;
      return finalPrice;
    } else{
      return 0;
    }
  }

  // Расчет налога на мощность
  double horsePowerCalc(double customValue){
    if (customValue > 0) {
      if (customValue < 100) {
        double price = 12 * customValue;
        return price;
      } else if (customValue > 100 && customValue < 125) {
        double price = 25 * customValue;
        return price;
      } else if (customValue > 125 && customValue < 150) {
        double price = 35 * customValue;
        return price;
      } else if (customValue > 150 && customValue < 175) {
        double price = 45 * customValue;
        return price;
      } else if (customValue > 175 && customValue < 200) {
        double price = 50 * customValue;
        return price;
      } else if (customValue > 200 && customValue < 225) {
        double price = 65 * customValue;
        return price;
      } else if (customValue > 225 && customValue < 250) {
        double price = 75 * customValue;
        return price;
      } else if (customValue > 250) {
        double price = 150 * customValue;
        return price;
      }
      else {
        double price = 150 * customValue;
        return price;
      }
    } else {
      double price = 150 * customValue;
      return price;
    }
  }

  // налог на роскошь
  double taxAutoPrice(double customValue){
    if (customValue > 3000000){
      double price = (customValue * 5) / 100;
      return price;
    }else if(customValue > 4000000){
      double price = (customValue * 6) / 100;
      return price;
    } else if(customValue > 5000000){
      double price = (customValue * 7) / 100;
      return price;
    } else if (customValue > 2000000 && customValue < 3000000){
      double price = (customValue * 4) / 100;
      return price;
    } else if (customValue < 2000000){
      double price = (customValue * 3) / 100;
      return price;
    } else{
      return 0;
    }
  }

}
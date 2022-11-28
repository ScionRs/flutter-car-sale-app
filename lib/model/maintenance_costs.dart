
class MaintenanceCosts{
  String id;
  // Расход в городском цикле
  final int fuelConsumptionUrbanCycle;
  // Расход в режиме трассы
  final int extraUrbanFuelConsumption;
  // Расход в комбинированном режиме
  final int combinedFuelConsumption;
  // Стоимость проезда в городском цикле на 100км
  final int costFuelConsumptionUrbanCycle;
  // Стоимость проезда в режиме трассы  на 100км
  final int costExtraUrbanFuelConsumption;
  // Стоимость проезда в гибридном режиме на 100км
  final int costCombinedFuelConsumption;
  // Дальность поездки
  final int travelDistance;
  // мощность
  final int horsePower;
  // налог на мощность
  final int costHorsePower;
  // цена автомобиля
  final int price;
  // налог на роскошь
  final int taxPrice;

  MaintenanceCosts({
      required this.id,
    required this.fuelConsumptionUrbanCycle,
    required this.extraUrbanFuelConsumption,
    required this.combinedFuelConsumption,
    required this.costFuelConsumptionUrbanCycle,
    required this.costExtraUrbanFuelConsumption,
    required this.costCombinedFuelConsumption,
    required this.travelDistance,
    required this.horsePower,
    required this.costHorsePower,
    required this.price,
    required this.taxPrice});

  factory MaintenanceCosts.fromJson(Map<String, dynamic> parsedJson){
    return MaintenanceCosts(
      id: parsedJson['_id'],
      fuelConsumptionUrbanCycle: parsedJson['fuelConsumptionUrbanCycle'],
      extraUrbanFuelConsumption: parsedJson['extraUrbanFuelConsumption'],
      combinedFuelConsumption: parsedJson['combinedFuelConsumption'],
      costFuelConsumptionUrbanCycle: parsedJson['costFuelConsumptionUrbanCycle'],
      costExtraUrbanFuelConsumption: parsedJson['costExtraUrbanFuelConsumption'],
      costCombinedFuelConsumption: parsedJson['costCombinedFuelConsumption'],
      travelDistance: parsedJson['travelDistance'],
      horsePower: parsedJson['horsePower'],
      costHorsePower: parsedJson['costHorsePower'],
      price: parsedJson['price'],
      taxPrice: parsedJson['taxPrice'],

    );
  }
}

class Equipment{
  final String id;
  // Название комплектации
  final String title;
  // Обивка сидений
  final String seatUpholstery;
  // Подогрев сидений
  final String heatedSeats;
  // Подушки безопасности
  final String airbags;
  // Бортовой компьютер
  final String onBoardComputer;
  // Мощность в лс
  final String power;
  // Крутящий момент в нм
  final int maxTorque;
  // Вид топлива
  final String typeOfFuel;
  // Время разгона
  final String accelerationTime;
  // Максимальная скорость
  final String maxSpeed;
  // Климат контроль
  final String airConditioningSystem;
  // Мульти-руль
  final String multifunctionSteeringWheel;
  // Обьем топливного бака
  final int fuelTankVolume;
  // Центральный замок
  final String centralLocking;
  // Обьем багажника
  final String trunkVolume;
  // Привод
  final String driveUnit;
  // Расход в городском цикле
  final int fuelConsumptionUrbanCycle;
  // Расход в режиме трассы
  final int extraUrbanFuelConsumption;
  // Дополнительные опции
  List<String> additionalOptions;

  Equipment({required this.id, required this.title, required this.seatUpholstery, required this.heatedSeats,
    required this.airbags,required this.onBoardComputer,required this.power,required this.maxTorque,
    required this.typeOfFuel,required this.accelerationTime,required this.maxSpeed,
    required this.airConditioningSystem,required this.multifunctionSteeringWheel,
    required this.fuelTankVolume, required this.centralLocking, required this.trunkVolume,
    required this.driveUnit, required this.fuelConsumptionUrbanCycle,
    required this.extraUrbanFuelConsumption, required this.additionalOptions});


}
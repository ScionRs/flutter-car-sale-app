
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
  final int horsePower;
  // Крутящий момент в нм
  final int maxTorque;
  // Вид топлива
  final String typeOfFuel;
  // Время разгона
  final double accelerationTime;
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
  // Дополнительные опции
  List<String> additionalOptions;

  Equipment({required this.id, required this.title, required this.seatUpholstery, required this.heatedSeats,
    required this.airbags,required this.onBoardComputer,required this.horsePower,required this.maxTorque,
    required this.typeOfFuel,required this.accelerationTime,required this.maxSpeed,
    required this.airConditioningSystem,required this.multifunctionSteeringWheel,
    required this.fuelTankVolume, required this.centralLocking, required this.trunkVolume,
    required this.driveUnit, required this.additionalOptions});

  factory Equipment.fromJson(Map<String, dynamic> parsedJson){
    var additionalOptionsfromJson = parsedJson['additionalOptions'];
    List<String> additionalOptionsList = additionalOptionsfromJson.cast<String>();
    return Equipment(
      id: parsedJson['_id'],
      title: parsedJson['title'],
      seatUpholstery: parsedJson['seatUpholstery'],
      heatedSeats: parsedJson['heatedSeats'],
      airbags: parsedJson['airbags'],
      onBoardComputer: parsedJson['onBoardComputer'],
      horsePower: parsedJson['horsePower'],
      maxTorque: parsedJson['maxTorque'],
      typeOfFuel: parsedJson['typeOfFuel'],
      accelerationTime: parsedJson['accelerationTime'],
      maxSpeed: parsedJson['maxSpeed'],
      airConditioningSystem: parsedJson['airConditioningSystem'],
      multifunctionSteeringWheel: parsedJson['multifunctionSteeringWheel'],
      fuelTankVolume: parsedJson['fuelTankVolume'],
      centralLocking: parsedJson['centralLocking'],
      trunkVolume: parsedJson['trunkVolume'],
      driveUnit: parsedJson['driveUnit'],
      additionalOptions: additionalOptionsList,
    );
  }


}
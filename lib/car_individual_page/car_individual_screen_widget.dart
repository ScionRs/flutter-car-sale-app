
import 'package:car_sale_app/app_values/AppValue.dart';
import 'package:car_sale_app/icons/my_flutter_app_icons.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/theme/constants.dart';
import 'package:car_sale_app/widgets/build_local_image.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class CarIndividualWidget extends StatefulWidget {
  final Car car;


  CarIndividualWidget({Key? key, required this.car}) : super(key: key);

  @override
  _CarIndividualState createState() => _CarIndividualState();
}

class _CarIndividualState extends State<CarIndividualWidget> {


  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    // Список опций автомобиля по умолчанию
    var tableListRowEquipment = [
      TableRow(children: [
        _TableRowCustomWidget(description: "Название комплектации:", car: widget.car.equipment.title.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Привод:", car: widget.car.equipment.driveUnit.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Мощность(лс):", car: widget.car.equipment.horsePower.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Время разгона:", car: widget.car.equipment.accelerationTime.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Обороты:", car: widget.car.equipment.maxTorque.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Типо топлива:", car: widget.car.equipment.typeOfFuel.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Подушки безопасности:", car: widget.car.equipment.airbags.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Обьем бензобака:", car: widget.car.equipment.fuelTankVolume.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Обьем багажника:", car: widget.car.equipment.trunkVolume.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Климат контроль:", car: widget.car.equipment.airConditioningSystem.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Бортовой компьютер:", car: widget.car.equipment.onBoardComputer.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Центральный замок:", car: widget.car.equipment.centralLocking.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Подогрев сидений:", car: widget.car.equipment.heatedSeats.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Максимальная скорость:", car: widget.car.equipment.maxSpeed.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Мультируль:", car: widget.car.equipment.multifunctionSteeringWheel.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Обивка сидений:", car: widget.car.equipment.seatUpholstery.toString(), textTheme: textTheme)
      ]),
    ];
    var tableListRowDefaultCarOptions = [
      TableRow(children: [
        _TableRowCustomWidget(description: "Год выпуска:", car: widget.car.productionYear.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Тип кузова:", car: widget.car.bodyType.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Трансмиссия:", car: widget.car.transmission.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Тип двигателя:", car: widget.car.engineType.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        _TableRowCustomWidget(description: "Обьем двигателя", car: widget.car.engineVolume.toString(), textTheme: textTheme)
      ]),
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: _TitleWidget(car: widget.car),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          _ImageContainerWidget(car: widget.car),
          Container(
            color: AppColors.lightnessGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ColumnWidget(car: widget.car.equipment.horsePower.toString(), icon: MyFlutterApp.engine, description: 'лс', textTheme: textTheme),
                  _ColumnWidget(car: widget.car.equipment.driveUnit.toString(), icon: MyFlutterApp.engine, description: 'привод', textTheme: textTheme),
                  _ColumnWidget(car: widget.car.equipment.accelerationTime.toString(), icon: MyFlutterApp.engine, description: 'до 100 км/ч', textTheme: textTheme),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: _ExpansionTileWidget(name:"Основные характеристики", tableListRowDefaultCarOptions: tableListRowDefaultCarOptions),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: _ExpansionTileWidget(name:"Комплектация", tableListRowDefaultCarOptions: tableListRowEquipment),
          ),
          Container(
            height: 320.0,
            child: DChartBar(
              data: [
                {
                  'id': 'Bar',
                  'data': [
                    {'domain': '2020', 'measure': 3},
                    {'domain': '2021', 'measure': 4},
                    {'domain': '2022', 'measure': 6},
                    {'domain': '2023', 'measure': 0.3},
                  ],
                },
              ],
              domainLabelPaddingToAxisLine: 16,
              axisLineTick: 2,
              axisLinePointTick: 2,
              axisLinePointWidth: 10,
              axisLineColor: Colors.green,
              measureLabelPaddingToAxisLine: 16,
              barColor: (barData, index, id) => Colors.green,
              showBarValue: true,
            ),
          ),
          ],
      )
    );
  }
}


class _TableRowCustomWidget extends StatelessWidget {
  final String description;
  final String car;
  final TextTheme textTheme;

  const _TableRowCustomWidget({
    Key? key,
    required this.description,
    required this.car,
    required this.textTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:  10.0),
          child: Text('${description}',  style: textTheme.titleLarge),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:  10.0),
            child: Text('${car.toString()}',maxLines: 2, style: textTheme.titleLarge, textAlign: TextAlign.right, overflow: TextOverflow.ellipsis,),
          ),
        ),
      ],
    );
  }
}

// Раскрывающийся список
class _ExpansionTileWidget extends StatelessWidget {
  const _ExpansionTileWidget({
    Key? key,
    required this.name,
    required this.tableListRowDefaultCarOptions,
  }) : super(key: key);
  final String name;
  final List<TableRow> tableListRowDefaultCarOptions;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('${name}', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
      collapsedBackgroundColor: Color.fromRGBO(0, 73, 183, 1),
      collapsedTextColor: Colors.white,
      textColor: Color.fromRGBO(0, 73, 183, 1),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            padding: const EdgeInsets.all(6.0),
              child: _TableWidget(tableRowList: tableListRowDefaultCarOptions,)),
        ),
      ],
    );
  }
}

// Таблица для опций
class _TableWidget extends StatelessWidget {
  final List<TableRow> tableRowList;
  const _TableWidget({
    Key? key,
    required this.tableRowList,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Table(
        border:TableBorder(
            horizontalInside: BorderSide(
                width: 1,
                color: AppColors.grey,
                style: BorderStyle.solid)),
      children: tableRowList
    );
  }
}


// Колонка с характеристикой
class _ColumnWidget extends StatelessWidget{
  final String car;
  final IconData icon;
  final String description;
  final TextTheme textTheme;

  _ColumnWidget({
    Key? key,
    required this.car,
    required this.icon,
    required this.description,
    required this.textTheme
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 45.0),
        Text('${car}', style: textTheme.titleLarge,),
        Text('${description}', style: textTheme.labelLarge,),
      ],
    );
  }
}

// Изображение и градиентный фон
class _ImageContainerWidget extends StatelessWidget {
  final Car car;
  const _ImageContainerWidget({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.1,
            0.6,
            0.9,
          ],
          colors: [
            Color.fromRGBO(15, 23, 42, 1),
            Color.fromRGBO(75, 85, 99, 1),
            Color.fromRGBO(15, 23, 42, 1)
          ],
        )
    ),
    child: BuildLocalImage(url:car.image)
    );
  }
}

// Название бренда и модели
class _TitleWidget extends StatelessWidget {
  final Car car;
  const _TitleWidget({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${car.brand} ', style: AppValue.textBigTitle),
        Text('${car.model}', style: AppValue.textBigTitle)
      ],
    );
  }
}

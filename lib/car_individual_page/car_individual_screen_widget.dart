
import 'package:d_chart/d_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/Car.dart';
import '../provider/car_provider.dart';
import '../theme/constants.dart';
import '../widgets/build_local_image.dart';
import '../widgets/car_card_widget.dart';
import '../widgets/navigation.dart';


class CarIndividualWidget extends StatefulWidget {
  final Car car;


  CarIndividualWidget({Key? key, required this.car}) : super(key: key);

  @override
  _CarIndividualState createState() => _CarIndividualState();
}

class _CarIndividualState extends State<CarIndividualWidget> {
  bool isLiked = false;

  final Widget engineIcon = SvgPicture.asset(
      'images/engine.svg',
      color: Colors.black,
      semanticsLabel: 'Engine',
      width: 30,
  );

  final Widget allWheelDriveIcon = SvgPicture.asset(
      'images/all_wheel_drive.svg',
      color: Colors.black,
      semanticsLabel: 'Wheel',
      width: 30,
  );

  final Widget speedIcon = SvgPicture.asset(
      'images/speed.svg',
      color: Colors.black,
      semanticsLabel: 'speed',
      width: 30,
  );

  @override
  Widget build(BuildContext context) {
    var carProvider = context.read<CarProvider>();
    var searchClassmatesCarModels = context.read<CarProvider>().searchCarClassmatesModel(widget.car.model, widget.car.bodyType);
    double cityFuel = widget.car.maintenanceCosts.calculateCycle(widget.car.maintenanceCosts.typeOfFuel, widget.car.maintenanceCosts.fuelConsumptionUrbanCycle).roundToDouble();
    double higwayFuel = widget.car.maintenanceCosts.calculateCycle(widget.car.maintenanceCosts.typeOfFuel, widget.car.maintenanceCosts.extraUrbanFuelConsumption).roundToDouble();
    double combinedFuel = widget.car.maintenanceCosts.calculateCycle(widget.car.maintenanceCosts.typeOfFuel, widget.car.maintenanceCosts.combinedFuelConsumption).roundToDouble();
    var carList = context.read<CarProvider>();
    TextTheme textTheme = Theme.of(context).textTheme;
    // Список дополнительных опций автомобиля
    var tableListRowEquipment = [
      TableRow(children: [
        TableRowCustomWidget(description: "Название комплектации:", car: widget.car.equipment.title.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Привод:", car: widget.car.equipment.driveUnit.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Мощность(лс):", car: widget.car.equipment.horsePower.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Время разгона:", car: widget.car.equipment.accelerationTime.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Обороты:", car: widget.car.equipment.maxTorque.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Тип топлива:", car: widget.car.equipment.typeOfFuel.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Подушки безопасности:", car: widget.car.equipment.airbags.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Обьем бензобака:", car: widget.car.equipment.fuelTankVolume.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Обьем багажника:", car: widget.car.equipment.trunkVolume.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Климат контроль:", car: widget.car.equipment.airConditioningSystem.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Бортовой компьютер:", car: widget.car.equipment.onBoardComputer.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Центральный замок:", car: widget.car.equipment.centralLocking.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Подогрев сидений:", car: widget.car.equipment.heatedSeats.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Максимальная скорость:", car: widget.car.equipment.maxSpeed.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Мультируль:", car: widget.car.equipment.multifunctionSteeringWheel.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Обивка сидений:", car: widget.car.equipment.seatUpholstery.toString(), textTheme: textTheme)
      ]),
    ];
    // Опции по "умолчанию"
    var tableListRowDefaultCarOptions = [
      TableRow(children: [
        TableRowCustomWidget(description: "Год выпуска:", car: widget.car.productionYear.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Тип кузова:", car: widget.car.bodyType.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Трансмиссия:", car: widget.car.transmission.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Тип двигателя:", car: widget.car.engineType.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Обьем двигателя", car: widget.car.engineVolume.toString(), textTheme: textTheme)
      ]),
    ];
    // Диаграмма расходов
    var tableListRowDiagramFuel = [
      TableRow(children: [
        TableRowCustomWidget(description: "Город:", car: cityFuel.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Трасса:", car: higwayFuel.toString(), textTheme: textTheme)
      ]),
      TableRow(children: [
        TableRowCustomWidget(description: "Смешанный:", car: combinedFuel.toString(), textTheme: textTheme)
      ]),
    ];


    Future openDialog() => showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
            elevation: 0.0,
            // title: Center(child: Text("Evaluation our APP")),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    children: [
                      BottomDialogButtonWidget(textCustom: 'Написать в Telegram', colorCustom: Colors.blue, icon: Icons.messenger,),
                      const Divider(),
                      BottomDialogButtonWidget(textCustom: 'Написать в WhatsApp', colorCustom: Colors.green,icon: Icons.messenger,),
                      const Divider(),
                      BottomDialogButtonWidget(textCustom: 'Позвонить', colorCustom: Colors.red,icon: Icons.call,)
                    ],
                  ),
                ),
              ],
            ));
      },
    );


    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: _TitleWidget(car: widget.car),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: (){
                setState(() {
                  if(isLiked == false){
                    isLiked = true;
                    if(carList.favoriteCarList.contains(
                        widget.car)) {
                    } else{
                      carList.addToFavoriteCarList(widget.car);
                    }
                  } else{
                    isLiked = false;
                    carList.removeToFavoriteCarList(widget.car);
                  }
                  print(isLiked);
                });
              },
              icon: const Icon(Icons.favorite, size: 30.0,),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: isLiked ? Colors.red : Colors.grey,
            )
          )
        ],
      ),
      bottomNavigationBar:
          OutlinedButton(onPressed: (){
            openDialog();
          },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(0, 73, 183, 1)),
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0)),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    )),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Позвонить', style: TextStyle(color: AppColors.white,fontSize: 23.0),textAlign: TextAlign.center,),
                  SizedBox(width: 5.0,),
                  Icon(Icons.call, color: AppColors.white, size: 34.0,),
                ],)
          ),
      body: ChangeNotifierProvider(
        create: (context) => CarProvider(),
        child: ListView(
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
                    _ColumnWidget(car: widget.car.equipment.horsePower.toString(), icon: engineIcon, description: 'лс', textTheme: textTheme),
                    _ColumnWidget(car: widget.car.equipment.driveUnit.toString(), icon: allWheelDriveIcon, description: 'привод', textTheme: textTheme),
                    _ColumnWidget(car: widget.car.equipment.accelerationTime.toString(), icon: speedIcon, description: 'до 100 км/ч', textTheme: textTheme),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: _ExpansionTileDiagramWidget(name:"Расходы на обслуживание",
                tableListRowDefaultCarOptions: tableListRowDiagramFuel,
                textTheme: textTheme,
                diagramFuelWidget: _DiagramFuelWidget(
                  cityFuel: cityFuel,
                  higwayFuel: higwayFuel,
                  combinedFuel: combinedFuel,
                )
                ,),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: _ExpansionForClassmatesCarWidget(carProvider: carProvider, classmates: searchClassmatesCarModels,))
            ],
        ),
      )
    );
  }
}

// Поиск одноклассников
class _ExpansionForClassmatesCarWidget extends StatefulWidget{
  final List<Car> classmates;
  final CarProvider carProvider;
  const _ExpansionForClassmatesCarWidget({
    Key? key,
    required this.classmates,
    required this.carProvider,
  }) : super(key: key);

  @override
  State<_ExpansionForClassmatesCarWidget> createState() => _ExpansionForClassmatesCarWidgetState();
}

class _ExpansionForClassmatesCarWidgetState extends State<_ExpansionForClassmatesCarWidget> {
  @override
  Widget build(BuildContext context){
    return  ExpansionTile(
      title: const Text('Одноклассники', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
      collapsedBackgroundColor: const Color.fromRGBO(0, 73, 183, 1),
      collapsedTextColor: Colors.white,
      textColor: const Color.fromRGBO(0, 73, 183, 1),
      children: <Widget>[
        ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: widget.classmates.length,
            itemBuilder: (BuildContext context, int index){
              final carItem = widget.classmates[index];
              print(carItem);
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        MainNavigationRouteName.carIndividual,
                        arguments: widget.classmates[index]);
                  },
                  child: IndividualCarCardWidget(
                      key: Key(widget.classmates[index].id),
                      isLikedDefault: false,
                      car: carItem,
                      isSelected: (bool value) {
                        setState(() {
                          if (value) {
                            print("Check from car_card $value");
                            widget.carProvider.addToFavoriteCarList(carItem);

                          } else{
                            print("Check from car_card $value");
                            widget.carProvider.removeToFavoriteCarList(carItem);
                          }
                          print(value);
                        });
                      })
              );
            }
        )
      ],
    );
  }
}


// Кнопка для всплывающего окна
class BottomDialogButtonWidget extends StatelessWidget {

  BottomDialogButtonWidget({
    Key? key,
    required this.textCustom,
    required this.colorCustom,
    required this.icon
  }) : super(key: key);

  String textCustom;
  Color colorCustom;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {
      if (textCustom.contains('Позвонить')) {
        Uri url = Uri(
            scheme: 'tel',
            path: '+796111111'
        );
        launchUrl(url);
      }
      else if (textCustom.contains('Telegram')){
        var telegram_link = 'https://t.me/+796111111';
        final Uri app_link_uri = Uri.parse(telegram_link);
        launchUrl(
          app_link_uri,
          mode: LaunchMode.externalApplication,
        );
      }
      else if (textCustom.contains('WhatsApp')){
        var whatsapp_link = "whatsapp://send?phone=" + '+796111111' + "&text=hellooo";
        final Uri app_link_uri = Uri.parse(whatsapp_link);
        launchUrl(
          app_link_uri,
          mode: LaunchMode.externalApplication,
        );
      }
    },
        style: ButtonStyle(
          side:  MaterialStateProperty.all(
              const BorderSide(color: Colors.transparent,)),
          minimumSize: MaterialStateProperty.all(const Size(50, 50)),
          backgroundColor: MaterialStateProperty.all(AppColors.white),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0)),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              )),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textCustom,
              style: TextStyle(color: colorCustom, fontSize: 20.0),
              textAlign: TextAlign.center,),
            const SizedBox(width: 5.0,),
            Icon(icon, color: AppColors.white, size: 30.0,),
          ],)
    );
  }
}

// Диаграмма расходов топлива
class _DiagramFuelWidget extends StatelessWidget {
  const _DiagramFuelWidget({
    Key? key,
    required this.cityFuel,
    required this.higwayFuel,
    required this.combinedFuel,
  }) : super(key: key);

  final double cityFuel;
  final double higwayFuel;
  final double combinedFuel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 320.0,
            child: DChartBar(
              data: [
                {
                  'id': 'Bar',
                  'data': [
                    {'domain': 'Город', 'measure': cityFuel},
                    {'domain': 'Трасса', 'measure': higwayFuel},
                    {'domain': 'Смешанный', 'measure': combinedFuel},
                  ],
                },
              ],
              domainLabelPaddingToAxisLine: 16,
              axisLineTick: 3,
              axisLinePointTick: 2,
              axisLinePointWidth: 10,
              axisLineColor: Colors.blue,
              measureLabelPaddingToAxisLine: 20,
              showBarValue: true,
              showDomainLine: true,
              showMeasureLine: true,
              barColor: (barData, index, id) {
                switch (index) {
                  case 1:
                    return Colors.green;
                  case 2:
                    return Colors.orange;
                  default:
                    return Colors.red;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Кастомное оформление строк
class TableRowCustomWidget extends StatelessWidget {
  final String description;
  final String car;
  final TextTheme textTheme;

  const TableRowCustomWidget({
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
      collapsedBackgroundColor: const Color.fromRGBO(0, 73, 183, 1),
      collapsedTextColor: Colors.white,
      textColor: const Color.fromRGBO(0, 73, 183, 1),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            padding: const EdgeInsets.all(6.0),
              child: Column(
                children: [
                  _TableWidget(tableRowList: tableListRowDefaultCarOptions,),
                ],
              )),
        ),
      ],
    );
  }
}

// раскрывающийся список для диаграммы
class _ExpansionTileDiagramWidget extends StatelessWidget {
  const _ExpansionTileDiagramWidget({
    Key? key,
    required this.name,
    required this.tableListRowDefaultCarOptions,
    required this.diagramFuelWidget,
    required this.textTheme
  }) : super(key: key);
  final String name;
  final List<TableRow> tableListRowDefaultCarOptions;
  final _DiagramFuelWidget diagramFuelWidget;
  final TextTheme textTheme;


  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('${name}', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
      collapsedBackgroundColor: Color.fromRGBO(0, 73, 183, 1),
      collapsedTextColor: Colors.white,
      textColor: const Color.fromRGBO(0, 73, 183, 1),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: [
                  Text('Стоимость пробега на 100км в различных режимах',textAlign: TextAlign.center, style: textTheme.titleLarge),
                  _TableWidget(tableRowList: tableListRowDefaultCarOptions,),
                  diagramFuelWidget
                ],
              )),
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
        border:const TableBorder(
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
  final Widget icon;
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: icon,
        ),
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
    return Text('${car.brand} ${car.model}', style: AppColors.textBigTitle);
  }
}

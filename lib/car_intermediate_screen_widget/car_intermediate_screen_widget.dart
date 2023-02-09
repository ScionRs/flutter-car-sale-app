
import 'package:car_sale_app/icons/my_flutter_app_icons.dart';
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/provider/car_provider.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/widgets/car_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../theme/constants.dart';
import '../widgets/build_local_image.dart';
import '../widgets/navigation.dart';


class CarIntermediateWidget extends StatefulWidget {
  final CarIntermediate carIntermediate;

  CarIntermediateWidget({Key? key, required this.carIntermediate}) : super(key: key);

  @override
  State<CarIntermediateWidget> createState() => _CarIntermediateWidgetState();
}

class _CarIntermediateWidgetState extends State<CarIntermediateWidget> {

  var ids = [];
  List<dynamic> distinctIds = [];

  var textStyle = const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

  var textStylePrice = const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

  
  String defaultImage = '';
  var formatPrice = NumberFormat("#,###,###", "en_US");

  // Вертска карточки автомобиля
  Widget buildCar(List<Car> car) => ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: car.length,
      itemBuilder: (BuildContext context, int index){
        final carItem = car[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
                MainNavigationRouteName.carIndividual,
                arguments: car[index]);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.customBackgroundGreyCard,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildLocalImage(url: carItem.image),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(carItem.equipment.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                        color: Colors.grey
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(MyFlutterApp.engine, size: 30.0,),
                            ),
                            Text('${carItem.equipment.horsePower} лс',
                            style: TextStyle(
                                fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Icon(MyFlutterApp.gearshift, size: 30.0,),
                              Text('${carItem.transmission}',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                        Text('${formatPrice.format(carItem.price).replaceAll(',', ' ')} ₽ ',style: textStylePrice,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
  );

  @override
  Widget build(BuildContext context) {
    var model = context.read<CarProvider>().searchCarModel(widget.carIntermediate.model);
    var colors = context.read<CarProvider>().changeColor(widget.carIntermediate.model);
    var image = context.read<CarProvider>().imageCar;

    String selectImageCar(String defaultValue){
      // Поиск изображения среди автомобилей
      setState(() {});
      if(defaultValue != '') {
        print("Collection from car provider: ${model}");
        Car newValue = model.firstWhere((e) =>
        e.bodyColor == defaultValue);
        print(newValue.image);
        return newValue.image;
      } else {
        return model[0].image;
      }
    }

    //var imgSelect = context.read<CarProvider>().selectImage(model, defaultImage);
    return Scaffold(
      backgroundColor: AppColors.customBackgroundWhite,
      appBar: AppBar(),
      body: ChangeNotifierProvider(
        create: (context) => CarProvider(),
        child: ListView(
          shrinkWrap: true,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          children:[
            Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('${widget.carIntermediate.brand} ',style: textStyle,),
                      Text(widget.carIntermediate.model,style: textStyle,),
                    ],
                  ),
                ),
                  defaultImage != '' ? BuildLocalImage(url: selectImageCar(defaultImage)) : BuildLocalImage(url: widget.carIntermediate.image),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /*
                      Text('${formatPrice.format(widget.carIntermediate.giveMinPriceFromCar()).replaceAll(',', ' ')} ₽ ',style: textStylePrice,),
                      Text('-', style: textStylePrice,),
                      Text(' ${formatPrice.format(widget.carIntermediate.giveExpMaxPriceFromCar()).replaceAll(',', ' ')} ₽',style: textStylePrice),
                       */
                    ],
                  ),
                ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: colors.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.96,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemBuilder: (BuildContext context, int index){
                final btnItem = colors[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Row(children: [
                        if (btnItem == 'Белый')...[
                          FloatingActionButton(
                            heroTag: "btnWhite",
                            backgroundColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                image = btnItem;
                                defaultImage = btnItem;
                                print("Tech $image");
                              });
                            },
                            child: const Text(''),
                          ),]
                        else if(btnItem == 'Красный')...[
                          FloatingActionButton(
                            heroTag: "btnRed",
                            backgroundColor: Colors.red,
                            onPressed: () {
                              setState(() {
                                image = btnItem;
                                defaultImage = btnItem;
                                print(defaultImage);
                              });
                            },
                            child: const Text(''),
                          ),
                        ]
                        else if(btnItem == 'Серый')...[
                            FloatingActionButton(
                              heroTag: "btnGrey",
                              backgroundColor: Colors.grey,
                              onPressed: () {
                                setState(() {
                                  image = btnItem;
                                  defaultImage = btnItem;
                                  print(defaultImage);
                                });
                              },
                              child: const Text(''),
                            ),
                          ]
                          else if(btnItem == 'Черный')...[
                              FloatingActionButton(
                                heroTag: "btnBlack",
                                backgroundColor: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    image = btnItem;
                                    defaultImage = btnItem;
                                    print(defaultImage);
                                  });
                                },
                                child: const Text(''),
                              ),
                            ]
                      ]),
                    ],
                  ),
                );
              }
          ),
                 SizedBox(height: 10,),
                 ExpansionTile(
                  title: Text('Смотреть ${model.length} авто ', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                   collapsedBackgroundColor: Color.fromRGBO(0, 73, 183, 1),
                  collapsedTextColor: Colors.white,
                  textColor: Color.fromRGBO(0, 73, 183, 1),
                  children: <Widget>[
                    //buildCar(model),
                    CarCardWidget(carList: model, isFavorite: false,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: Text('Описание ${widget.carIntermediate.model}', style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                      ), textAlign: TextAlign.left),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Text('${widget.carIntermediate.description}',style: TextStyle(
                    fontSize: 17.0,
                  ), textAlign: TextAlign.justify,),
                )
              ],
            ),
          ),
        ],
        ),
      )
    );
  }
}

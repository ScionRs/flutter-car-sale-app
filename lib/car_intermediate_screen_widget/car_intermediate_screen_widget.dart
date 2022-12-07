
import 'package:car_sale_app/app_values/AppValue.dart';
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CarIntermediateWidget extends StatefulWidget {
  final CarIntermediate carIntermediate;

  CarIntermediateWidget({Key? key, required this.carIntermediate}) : super(key: key);

  @override
  State<CarIntermediateWidget> createState() => _CarIntermediateWidgetState();
}

class _CarIntermediateWidgetState extends State<CarIntermediateWidget> {

  var ids = [];
  List<dynamic> distinctIds = [];

  @override
  void initState() {
    ids = widget.carIntermediate.carList.map((e) => e.bodyColor).toList();
    distinctIds = ids.toSet().toList();
  }

  var textStyle = const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

  var textStylePrice = const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

  
  String defaultImage = '';

  String selectImage(String defaultValue){
    setState(() {});
      if(defaultValue != '') {
        Car newValue = widget.carIntermediate.carList.firstWhere((e) =>
        e.bodyColor == defaultValue);
        return newValue.image;
      } else {
        return widget.carIntermediate.carList[0].image;
      }
  }

  Widget buildColorBtn(List<dynamic> btn) => GridView.builder(
      shrinkWrap: true,
      itemCount: btn.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.96,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
      ),
      itemBuilder: (BuildContext context, int index){
        final btnItem = btn[index];
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
                    defaultImage = btnItem;
                    print(selectImage(defaultImage));
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
  );



  @override
  Widget build(BuildContext context) {
    var formatPrice = NumberFormat("#,###,###", "en_US");
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${widget.carIntermediate.carList[0].brand} ',style: textStyle,),
                  Text(widget.carIntermediate.carList[0].model,style: textStyle,),
                ],
              ),
            ),
            defaultImage != '' ? BuildImage(url: selectImage(defaultImage)) : BuildImage(url: widget.carIntermediate.carList[0].image),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${formatPrice.format(widget.carIntermediate.giveMinPriceFromCar()).replaceAll(',', ' ')} ₽ ',style: textStylePrice,),
                  Text('-', style: textStylePrice,),
                  Text(' ${formatPrice.format(widget.carIntermediate.giveExpMaxPriceFromCar()).replaceAll(',', ' ')} ₽',style: textStylePrice),
                ],
              ),
            ),
                buildColorBtn(distinctIds),
             SizedBox(height: 10,),
             ExpansionTile(
              title: Text('Смотреть ${widget.carIntermediate.carList.length} авто ', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
               collapsedBackgroundColor: Color.fromRGBO(0, 73, 183, 1),
              collapsedTextColor: Colors.white,
              textColor: Color.fromRGBO(0, 73, 183, 1),
              children: <Widget>[
                ListTile(title: Text('Здесь будут автомобили')),
              ],
            ),
          ],
        ),
      )
    );
  }
}
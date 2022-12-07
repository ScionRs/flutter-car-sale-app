
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:flutter/material.dart';


class CarIntermediateWidget extends StatelessWidget {
  final CarIntermediate carIntermediate;


  CarIntermediateWidget({Key? key, required this.carIntermediate}) : super(key: key);

  var textStyle = const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
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
                  Text('${carIntermediate.carList[0].brand} ',style: textStyle,),
                  Text(carIntermediate.carList[0].model,style: textStyle,),
                ],
              ),
            ),
            BuildImage(url: carIntermediate.carList[0].image),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${carIntermediate.giveMinPriceFromCar()} ',style: textStyle,),
                Text('-'),
                Text('${carIntermediate.giveExpMaxPriceFromCar()}',style: textStyle),
              ],
            )

          ],
        ),
      )
    );
  }
}

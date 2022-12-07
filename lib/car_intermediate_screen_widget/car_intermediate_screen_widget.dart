
import 'package:car_sale_app/model/car_intermediate.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CarIntermediateWidget extends StatelessWidget {
  final CarIntermediate carIntermediate;


  CarIntermediateWidget({Key? key, required this.carIntermediate}) : super(key: key);

  var textStyle = const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  var textStylePrice = const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

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
                  Text('${carIntermediate.carList[0].brand} ',style: textStyle,),
                  Text(carIntermediate.carList[0].model,style: textStyle,),
                ],
              ),
            ),
            BuildImage(url: carIntermediate.carList[0].image),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${formatPrice.format(carIntermediate.giveMinPriceFromCar()).replaceAll(',', ' ')} ₽ ',style: textStylePrice,),
                  Text('-', style: textStylePrice,),
                  Text(' ${formatPrice.format(carIntermediate.giveExpMaxPriceFromCar()).replaceAll(',', ' ')} ₽',style: textStylePrice),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}

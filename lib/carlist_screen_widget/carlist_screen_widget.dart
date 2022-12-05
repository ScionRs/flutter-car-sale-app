import 'package:car_sale_app/car_intermediate_screen_widget/car_intermediate_screen_widget.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/widgets/app_bar_widget.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:flutter/material.dart';

class CarListScreenWidget extends StatelessWidget {
 final CarCategory carCategory;


  const CarListScreenWidget({required this.carCategory, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarWidget(),
      ),
      body: ListView.builder(
        itemCount: carCategory.cars.length,
        itemBuilder: (BuildContext context, int index) =>
             GestureDetector(
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(
                         builder: (context) =>
                             CarIntermediateWidget(carIntermediate: carCategory.cars[index]),
                       ));
                 },
                 child: _CarCardWidget(carCategory: carCategory, index: index)),
      ),
      );
  }
}

class _CarCardWidget extends StatelessWidget {
  CarCategory carCategory;
  int index;


  _CarCardWidget({required this.carCategory, required this.index});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 130,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 237, 238, 241),
        ),
        child: Row(
          children: [
           BuildImage(url: carCategory.cars[index].giveCarImage()),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Row(
                    children: [
                      Text(
                        "${carCategory.cars[index].giveCarBrand()}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " ${carCategory.cars[index].giveCarModel()}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text("Количество:${carCategory.cars[index].carList.length}"),
                  Row(
                    children: [
                      Text("Цена от:${carCategory.cars[index].giveMinPriceFromCar()} ₽"),

                    ],
                  ),

                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

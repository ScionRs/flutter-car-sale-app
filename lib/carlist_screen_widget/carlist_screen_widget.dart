import 'package:car_sale_app/car_intermediate_screen_widget/car_intermediate_screen_widget.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/widgets/app_bar_widget.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:car_sale_app/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CarListScreenWidget extends StatelessWidget {
  final CarCategory carCategory;

  const CarListScreenWidget({required this.carCategory, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarWidget(),
      ),
      body: ListView.separated(
        itemCount: carCategory.cars.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                  MainNavigationRouteName.carIntermediateScreen,
                  arguments: carCategory.cars[index]);
            },
            child: _CarCardWidget(carCategory: carCategory, index: index)),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 16),
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
    var modelName =
        "${carCategory.cars[index].brand} ${carCategory.cars[index].model}";
    // var carsNumber = carCategory.cars[index].carList.length;
    var formatPrice = NumberFormat("#,###,###", "en_US");

    return Container(
      height: 130,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 238, 239, 240),
      ),
      child: Row(
        children: [
          BuildImage(url: carCategory.cars[index].image),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  modelName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      "???? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    /*Text(
                      "${formatPrice.format(price).replaceAll(',', ' ')} ???",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),*/
                  ],
                ),
                // const SizedBox(height: 4),
                // Text(
                //   "????????????????????: $carsNumber",
                //   style: const TextStyle(
                //     fontStyle: FontStyle.italic,
                //   ),
                // ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 30,
          ),
        ],
      ),
    );
  }
}

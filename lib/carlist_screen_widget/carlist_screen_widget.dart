import 'package:car_sale_app/car_intermediate_screen_widget/car_intermediate_screen_widget.dart';
import 'package:car_sale_app/model/car_category.dart';
import 'package:car_sale_app/provider/car_provider.dart';
import 'package:car_sale_app/widgets/app_bar_widget.dart';
import 'package:car_sale_app/widgets/build_image.dart';
import 'package:car_sale_app/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../model/car_intermediate.dart';
import '../widgets/build_local_image.dart';

class CarListScreenWidget extends StatelessWidget {
  final List<CarIntermediate> cars;

  const CarListScreenWidget({required this.cars, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brandName = cars[0].brand;
    var carProvider = context.read<CarProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(brandName),
      ),
      body: ChangeNotifierProvider(
        create: (context) => CarProvider(),
        child: ListView.separated(
          itemCount: cars.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                    MainNavigationRouteName.carIntermediateScreen,
                    arguments: cars[index]);
              },
              child: _CarCardWidget(cars: cars, index: index, realCarsCount: carProvider.searchCarModel(cars[index].model).length,)),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 16),
        ),
      ),
    );
  }
}

class _CarCardWidget extends StatelessWidget {
  List<CarIntermediate> cars;
  int index;
  int realCarsCount;

  _CarCardWidget({required this.cars, required this.index, required this.realCarsCount});

  @override
  Widget build(BuildContext context) {
    var modelName = "${cars[index].brand} ${cars[index].model}";
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
          BuildLocalImage(url: cars[index].image),
          const SizedBox(width: 10),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Text('${realCarsCount} автомобиля в наличии',maxLines: 2, overflow: TextOverflow.ellipsis,)),
                    /*const Text(
                      "От ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),*/
                    /*Text(
                      "${formatPrice.format(price).replaceAll(',', ' ')} ₽",
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
                //   "Количество: $carsNumber",
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

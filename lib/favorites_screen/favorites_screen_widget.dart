import 'package:car_sale_app/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:car_sale_app/provider/car_provider.dart';
import 'package:car_sale_app/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/Car.dart';
import '../widgets/PdfApi.dart';

class FavoritesScreenWidget extends StatefulWidget {
  const FavoritesScreenWidget({Key? key}) : super(key: key);

  @override
  State<FavoritesScreenWidget> createState() => _FavoritesScreenWidgetState();
}



class _FavoritesScreenWidgetState extends State<FavoritesScreenWidget> {
  List<Car> templateList = [];
  @override
  Widget build(BuildContext context) {
    var carList = Provider.of<CarProvider>(context, listen: true);
    //var carList = context.read<CarProvider>();
    bool isEmpty = carList.giveCarList().length > 0 ? true : false;
    print('Из избранного ${carList.favoriteCarList.length}');
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Желаемое'),
        actions: [
          isEmpty?
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                  icon: const Icon(Icons.print, size: 30.0,),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.blue,
                onPressed: () async {
                    final pdfFile = await PdfApi.generateTable(carList.favoriteCarList);
                    PdfApi.openFile(pdfFile);
                   },
              )
          ) :
              const Text(''),
        ],
      ),
      body: ChangeNotifierProvider(
        create: (context) => CarProvider(),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            isEmpty ?  Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Количество автомобилей: ${carList.favoriteCarList.length}', style: textTheme.titleLarge),
            )
                : const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text('Автомобили не выбраны', style: TextStyle(fontSize: 18.0),),
            ),
            CarCardWidget(carList: carList.favoriteCarList,carProvider: carList, isFavorites: true,)

          ],
        ),
      ),
    );
  }
}

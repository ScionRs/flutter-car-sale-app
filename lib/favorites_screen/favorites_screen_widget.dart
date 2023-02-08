import 'package:car_sale_app/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:car_sale_app/provider/car_provider.dart';
import 'package:car_sale_app/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesScreenWidget extends StatefulWidget {
  const FavoritesScreenWidget({Key? key}) : super(key: key);

  @override
  State<FavoritesScreenWidget> createState() => _FavoritesScreenWidgetState();
}



class _FavoritesScreenWidgetState extends State<FavoritesScreenWidget> {
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
                 padding: EdgeInsets.only(left: 8.0),
                 child: Text('Нету автомобилей'),
               ),
            CarCardWidget(carList: carList.favoriteCarList)
          ],
        ),
      ),
    );
  }
}

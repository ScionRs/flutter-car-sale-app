

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../icons/my_flutter_app_icons.dart';
import '../model/Car.dart';
import '../provider/car_provider.dart';
import '../theme/constants.dart';
import 'build_local_image.dart';
import 'navigation.dart';
import 'package:provider/provider.dart';

class CarCardWidget extends StatefulWidget {
  final List<Car> carList;
  final bool isFavorite;
  CarCardWidget({Key? key, required this.carList, required this.isFavorite}) : super(key: key);

  @override
  _CarCardWidgetState createState() => _CarCardWidgetState();
}

class _CarCardWidgetState extends State<CarCardWidget> {

  var textStyle = const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
  var textStylePrice = const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

  bool isLiked = false;
  bool isLikedFavorites = true;


  @override
  Widget build(BuildContext context) {
    var carProvider = context.read<CarProvider>();
    return ChangeNotifierProvider(
      create: (context) => CarProvider(),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: widget.carList.length,
          itemBuilder: (BuildContext context, int index){
            final carItem = widget.carList[index];
            print(carItem);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                    MainNavigationRouteName.carIndividual,
                    arguments: widget.carList[index]);
              },
              child: IndividualCarCardWidget(
                  key: Key(widget.carList[index].toString()),
                  car: carItem,
                  isSelected: (bool value) {
                    setState(() {
                      if (value) {
                            carProvider.addToFavoriteCarList(widget.carList[index]);
                        } else{
                            carProvider.removeToFavoriteCarList(carItem);
                        }
                        print(value);
                    });
                  })
            );
          }
      ),
    );
  }
}

class IndividualCarCardWidget extends StatefulWidget {
  final Key key;
  final Car car;
  final ValueChanged<bool> isSelected;

  IndividualCarCardWidget({required this.key, required this.car, required this.isSelected});

  @override
  _IndividualCarCardWidgetState createState() => _IndividualCarCardWidgetState();
}

class _IndividualCarCardWidgetState extends State<IndividualCarCardWidget> {
  var formatPrice = NumberFormat("#,###,###", "en_US");
  bool isSelected = false;
  var textStylePrice = const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    var formatPrice = NumberFormat("#,###,###", "en_US");
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.customBackgroundGreyCard,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
                children: [
                  BuildLocalImage(url: widget.car.image),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          isSelected = !isSelected;
                          widget.isSelected(isSelected);
                        });
                      },
                      icon: const Icon(Icons.favorite, size: 35.0,),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: isSelected ? Colors.red : Colors.grey,
                    ),
                  )
                ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(widget.car.equipment.title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Icon(MyFlutterApp.engine, size: 30.0,),
                      ),
                      Text('${widget.car.equipment.horsePower} лс',
                        style: const TextStyle(
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
                        const Icon(MyFlutterApp.gearshift, size: 30.0,),
                        Text('${widget.car.transmission}',
                          style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ),
                  Text('${formatPrice.format(widget.car.price).replaceAll(',', ' ')} ₽ ',style: textStylePrice,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


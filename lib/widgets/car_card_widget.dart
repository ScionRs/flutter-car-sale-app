
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
  final CarProvider carProvider;
  final List<Car> carList;
  bool isFavorites;
  CarCardWidget({Key? key, required this.carList,required this.carProvider, required this.isFavorites}) : super(key: key);

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
    //var carProvider = context.read<CarProvider>();
    //var carProvider = Provider.of<CarProvider>(context);
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
                    key: Key(widget.carList[index].id),
                    car: carItem,
                    isLikedDefault: widget.isFavorites,
                    isSelected: (bool value) {
                      setState(() {
                        if (value) {
                         widget.carProvider.removeToFavoriteCarList(carItem);
                         print("Check from car_card $value");
                        } else{
                          widget.carProvider.removeToFavoriteCarList(carItem);
                          print("Check from car_card $value");
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
  final bool isLikedDefault;
  final ValueChanged<bool> isSelected;

  IndividualCarCardWidget({required this.key, required this.car,required this.isSelected, required this.isLikedDefault});

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
                    child: widget.isLikedDefault? IconButton(
                      onPressed: (){
                        setState(() {
                          isSelected = !isSelected;
                          widget.isSelected(isSelected);
                        });
                      },
                      icon: const Icon(Icons.favorite, size: 35.0,),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: widget.isLikedDefault ? Colors.red : Colors.grey,
                    ) : IconButton(
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


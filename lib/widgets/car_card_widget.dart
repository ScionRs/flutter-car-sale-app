

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../icons/my_flutter_app_icons.dart';
import '../model/Car.dart';
import '../theme/constants.dart';
import 'build_local_image.dart';
import 'navigation.dart';

class CarCardWidget extends StatefulWidget {
  final List<Car> carList;
  CarCardWidget({Key? key, required this.carList}) : super(key: key);

  @override
  _CarCardWidgetState createState() => _CarCardWidgetState();
}

class _CarCardWidgetState extends State<CarCardWidget> {


  @override
  Widget build(BuildContext context) {
    var formatPrice = NumberFormat("#,###,###", "en_US");
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.carList.length,
        itemBuilder: (BuildContext context, int index){
          final carItem = widget.carList[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                  MainNavigationRouteName.carIndividual,
                  arguments: widget.carList[index]);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.customBackgroundGreyCard,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BuildLocalImage(url: carItem.image),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(carItem.equipment.title,
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
                              Text('${carItem.equipment.horsePower} лс',
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
                                Text('${carItem.transmission}',
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                          ),
                          Text('${formatPrice.format(carItem.price).replaceAll(',', ' ')} ₽ ',style: textStylePrice,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}

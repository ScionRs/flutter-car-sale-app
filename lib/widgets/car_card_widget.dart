

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../icons/my_flutter_app_icons.dart';
import '../model/Car.dart';
import '../theme/constants.dart';
import 'build_local_image.dart';
import 'navigation.dart';

class CarCardWidget extends StatefulWidget {
  final List<Car> carList;
  final List<Car> providerCarList;
  final bool isFavorite;
  CarCardWidget({Key? key, required this.carList, required this.providerCarList, required this.isFavorite}) : super(key: key);

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
                    Stack(
                        children: [
                      BuildLocalImage(url: carItem.image),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: widget.isFavorite? IconButton(
                          onPressed: (){
                            setState(() {
                              if(isLiked != false){
                                isLiked = false;
                                widget.providerCarList.add(carItem);
                              } else{
                                widget.providerCarList.remove(carItem);
                              }
                              print(isLiked);
                            });
                          },
                          icon: const Icon(Icons.favorite, size: 35.0,),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          color: isLiked ? Colors.grey : Colors.red,
                        ) :  IconButton(
                          onPressed: (){
                            setState(() {
                              if(isLiked == false){
                                isLiked = true;
                                if(widget.providerCarList.contains(
                                    carItem)) {
                                } else{
                                  widget.providerCarList.add(carItem);
                                }
                              } else{
                                isLiked = false;
                                widget.providerCarList.remove(carItem);
                              }
                              print(isLiked);
                            });
                          },
                          icon: const Icon(Icons.favorite, size: 35.0,),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          color: isLiked ? Colors.red : Colors.grey,
                        ),
                      )
                    ]),
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


import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/theme/constants.dart';
import 'package:flutter/material.dart';

class CarIndividualWidget extends StatefulWidget {
  final Car car;


  CarIndividualWidget({Key? key, required this.car}) : super(key: key);

  @override
  _CarIndividualState createState() => _CarIndividualState();
}

class _CarIndividualState extends State<CarIndividualWidget> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          
        ],
      )
    );
  }
}


import 'package:car_sale_app/app_values/AppValue.dart';
import 'package:car_sale_app/icons/my_flutter_app_icons.dart';
import 'package:car_sale_app/model/Car.dart';
import 'package:car_sale_app/theme/constants.dart';
import 'package:car_sale_app/widgets/build_local_image.dart';
import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: _TitleWidget(car: widget.car),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          _ImageContainerWidget(car: widget.car),
          Container(
            color: AppColors.lightnessGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ColumnWidget(car: widget.car.equipment.horsePower.toString(), icon: MyFlutterApp.engine, description: 'лс', textTheme: textTheme),
                  _ColumnWidget(car: widget.car.equipment.driveUnit.toString(), icon: MyFlutterApp.engine, description: 'привод', textTheme: textTheme),
                  _ColumnWidget(car: widget.car.equipment.accelerationTime.toString(), icon: MyFlutterApp.engine, description: 'до 100 км/ч', textTheme: textTheme),
                ],
              ),
            ),
          ),

        ],
      )
    );
  }
}

// Колонка с характеристикой
class _ColumnWidget extends StatelessWidget{
  final String car;
  final IconData icon;
  final String description;
  final TextTheme textTheme;

  _ColumnWidget({
    Key? key,
    required this.car,
    required this.icon,
    required this.description,
    required this.textTheme
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 45.0),
        Text('${car}', style: textTheme.titleLarge,),
        Text('${description}', style: textTheme.labelLarge,),
      ],
    );
  }
}

// Изображение и градиентный фон
class _ImageContainerWidget extends StatelessWidget {
  final Car car;
  const _ImageContainerWidget({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.1,
            0.6,
            0.9,
          ],
          colors: [
            Color.fromRGBO(15, 23, 42, 1),
            Color.fromRGBO(75, 85, 99, 1),
            Color.fromRGBO(15, 23, 42, 1)
          ],
        )
    ),
    child: BuildLocalImage(url:car.image)
    );
  }
}

// Название бренда и модели
class _TitleWidget extends StatelessWidget {
  final Car car;
  const _TitleWidget({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${car.brand} ', style: AppValue.textBigTitle),
        Text('${car.model}', style: AppValue.textBigTitle)
      ],
    );
  }
}
